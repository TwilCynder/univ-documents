// Need this to use the getline C function on Linux. Works without this on MacOs. Not tested on Windows.
#define _GNU_SOURCE
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <assert.h>
#include <ctype.h>
#include <math.h>

#include "token.h"
#include "queue.h"
#include "stack.h"

void printToken(FILE* file, void* t){
	tokenDump(file, (Token*) t);
}


bool isWhiteSpace(char c){
	return (c == ' ' || c == '\n' || c == 9);
}

bool isSymbol(char c){
	return (c > 39 && c < 44) || c == 45 || c == 47 || c == 94;
}

Queue* stringToTokenQueue(const char* expr){
	ptrQueue q = createQueue();

	const char* cursor = expr;
	const char* numberStart = 0; //when numberstart != 0, a number is being read

	while (*cursor != '\0'){
		if (!isWhiteSpace(*cursor)){
			if (isSymbol(*cursor)){
				if (numberStart){
					queuePush(q, createTokenFromString(numberStart, cursor - numberStart));
				}
				numberStart = 0;

				queuePush(q, createTokenFromString(cursor, 1));
			} else if (isdigit(*cursor) && !numberStart) {
				numberStart = cursor;
			}
		}
		cursor++;
	}

	if (numberStart) {
		queuePush(q, createTokenFromString(numberStart, cursor - numberStart));
	}

	return q;
}

Queue* ShuntingYard(Queue* infix){
	Token* t;
	Queue* rpn = createQueue();
	Stack* opStack = createStack(32);

	while (!queueEmpty(infix)){
		t = (Token*)queueTop(infix);
		queuePop(infix);
		if (tokenIsNumber(t)){
			queuePush(rpn, t);
		} else if (tokenIsOperator(t)){
			while(
				!stackEmpty(opStack) &&
				((tokenGetOperatorPriority(t) < tokenGetOperatorPriority(stackTop(opStack)) ||
				(tokenGetOperatorPriority(t) == tokenGetOperatorPriority(stackTop(opStack)) && tokenOperatorIsLeftAssociative(t))) &&
				!(tokenIsParenthesis(stackTop(opStack)) && tokenGetParenthesisSymbol(stackTop(opStack)) == '(')
				)
			){
				queuePush(rpn, stackTop(opStack));
				stackPop(opStack);
			}
			stackPush(opStack, t);
		} else if (tokenIsParenthesis(t)){
			if (tokenGetParenthesisSymbol(t) == '('){
				stackPush(opStack, t);
			} else {
				while (! (stackEmpty(opStack) || (tokenIsParenthesis(stackTop(opStack)) && tokenGetParenthesisSymbol(stackTop(opStack)) == '('))){
					queuePush(rpn, stackTop(opStack));
					stackPop(opStack);
				}
				stackPop(opStack);
			}
		}
	}

	while(!stackEmpty(opStack)){
		if (tokenIsParenthesis(stackTop(opStack))){
			printf("Erreur de parentheses");
			break;
		}
		queuePush(rpn, stackTop(opStack));
		stackPop(opStack);
	}

	deleteStack(&opStack);
	return rpn;
}

void onWrongOperandToken(Token* operator, Token* operand){
	fprintf(stderr, "Error : malformed RPN : expected number token for operation ");
	tokenDump(stderr, operator);
	fprintf(stderr, " but got ");
	tokenDump(stderr, operand);
	exit(1);
}

Token* evaluateOperator(Token* op, Token* left_token, Token* right_token){
	if (!tokenIsNumber(left_token)) onWrongOperandToken(op, left_token);
	if (!tokenIsNumber(right_token)) onWrongOperandToken(op, right_token);

	float lhv = tokenGetValue(left_token);
	float rhv = tokenGetValue(right_token);

	switch (tokenGetOperatorSymbol(op)){
		case '+': return createTokenFromValue(lhv + rhv);
		case '-': return createTokenFromValue(lhv - rhv);
		case '*': return createTokenFromValue(lhv * rhv);
		case '/': return createTokenFromValue(lhv / rhv);
		case '^': return createTokenFromValue(pow(lhv, rhv));
		default :
			fprintf(stderr, "Error : unsupported operator : got operator token with symbol %c\n", tokenGetOperatorSymbol(op));
			exit(2);
	}
}

Token* tryPopOperand(Stack* stack){
	if (stackEmpty(stack)){
		fprintf(stderr, "Error : malformed rpn : an operator was read but no operands left\n");
		exit(3);
	}
	Token* res = (Token*)stackTop(stack);
	stackPop(stack);
	return res;
}

float evaluateExpression(Queue* rpn){
	Stack* valueStack = createStack(32);
	Token* t;
	float result;
	Token *lhv, *rhv;

	while (!queueEmpty(rpn)){
		t = (Token*)queueTop(rpn);
		queuePop(rpn);

		if (tokenIsOperator(t)){	
			rhv = tryPopOperand(valueStack);
			lhv = tryPopOperand(valueStack);
			stackPush(valueStack, evaluateOperator(t, lhv, rhv));
		} else if (tokenIsNumber(t)){
			stackPush(valueStack, t);
		} else {
			fprintf(stderr, "Error : malformed rpn : found token that was neither number or operator : ");
			tokenDump(stderr, t);
			exit(4);
		}
	}

	if (stackEmpty(valueStack)){
		fprintf(stderr, "Error : rpn evaluation : no value left on the stack after evaluation\n");
		exit(5);
	}

	result = tokenGetValue(stackTop(valueStack));
	stackPop(valueStack);

	if (!stackEmpty(valueStack)){
		fprintf(stderr, "Error : rpn evaluation : more than one value left on the stack after evaluation\n");
		exit(6);
	}

	deleteStack(&valueStack);

	return result;
}

void fullDeleteQueue(Queue* q){
	Token* t;
	while(!queueEmpty(q)){
		t = (Token*) queueTop(q);
		deleteToken(&t);
		queuePop(q);
	}
	deleteQueue(&q);
}

void computeExpressions(FILE* stream){
	char* line = NULL;
	size_t n;
	Queue* infixQ;
	Queue* rpnQ;
	float result;

	while (getline(&line, &n, stream) != -1){
		printf("\033[0;36m%s\033[0m", line);
		infixQ = stringToTokenQueue(line);
		if (!queueEmpty(infixQ)){
			printf("Infix   : ");
			queueDump(stdout, infixQ, &printToken);
			printf("\nPostfix : ");
			rpnQ = ShuntingYard(infixQ);
			queueDump(stdout, rpnQ, &printToken);
			printf("\n");
			result = evaluateExpression(rpnQ);
			printf("Evaluated to : \033[1;33m%f\033[0m\n", result);

			fullDeleteQueue(infixQ);
			fullDeleteQueue(rpnQ);
		}
	}

	free(line);
}

/** Main function for testing.
 * The main function expects one parameter that is the file where expressions to translate are
 * to be read.
 *
 * This file must contain a valid expression on each line
 *
 */
int main(int argc, char **argv){
	FILE *input;
	
	if (argc<2) {
		fprintf(stderr,"usage : %s filename\n", argv[0]);
		return 1;
	}
	
	input = fopen(argv[1], "r");

	if ( !input ) {
		perror(argv[1]);
		return 1;
	}

	computeExpressions(input);

	fclose(input);
	return 0;
}
 
