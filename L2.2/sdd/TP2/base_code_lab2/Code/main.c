// Need this to use the getline C function on Linux. Works without this on MacOs. Not tested on Windows.
#define _GNU_SOURCE
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <assert.h>
#include <math.h>

#include "token.h"
#include "queue.h"
#include "stack.h"


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
			} else if (!numberStart) {
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
		queuePush(q, stackTop(opStack));
		stackPop(opStack);
	}

	deleteStack(opStack);
	return q;
}

void printToken(FILE* file, void* t){
	tokenDump(file, (Token*) t);
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
	Queue* q;

	while (!feof(stream)){
		getline(&line, &n, stream);
		printf(line);
		q = stringToTokenQueue(line);
		queueDump(stdout, q, &printToken);
		printf("\n");
		fullDeleteQueue(q);
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
 
