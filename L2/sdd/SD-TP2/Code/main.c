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

bool isSymbol(char c){
	return (c > 39 && c < 44) || c == 45 || c == 47 || c == 94;
}

void queueDumpCallback(FILE* f, void* e){
	tokenDump(f, (Token*)e);
}

/** Converts a string into a queue of symbols.
	*returns a pointer to a queue in case of success
 */
Queue *stringToTokenQueue(const char *expression){
	ptrQueue q = createQueue();
	const char* cursor = expression;
	const char* nStart = 0;

	while (*cursor != 0){
		if (*cursor != '\n' && *cursor != ' '){
			if (isSymbol(*cursor)){
				if (nStart) {
					queuePush(q, createTokenFromString(nStart, cursor - nStart));
					nStart = 0;
				}
				queuePush(q, createTokenFromString(cursor, 1));
			} else {
				nStart = cursor;
			}
		}
		++cursor;
	}
	if (nStart) {
		queuePush(q, createTokenFromString(nStart, cursor - nStart));
		nStart = 0;
	}
	return q;

}

Queue *shuntingYard(Queue* infix){
	Token* t;
	Queue* q = createQueue();
	Stack* opStack = createStack(32);
	
	while (!queueEmpty(infix)){
		t = (Token*)queueTop(infix);
		queuePop(infix);
		if (tokenIsNumber(t)) {
			queuePush(q, t);
		} else if (tokenIsOperator(t)) {
			while(
				!stackEmpty(opStack) &&
				((tokenGetOperatorPriority(t) < tokenGetOperatorPriority(stackTop(opStack)) ||
				(tokenGetOperatorPriority(t) == tokenGetOperatorPriority(stackTop(opStack)) && tokenOperatorIsLeftAssociative(t))) &&
				!(tokenIsParenthesis(stackTop(opStack)) && tokenGetParenthesisSymbol(stackTop(opStack)) == '(')
				)
			){
				queuePush(q, stackTop(opStack));
				stackPop(opStack);
			}
			stackPush(opStack, t);
		} else if (tokenIsParenthesis(t)){
			if (tokenGetParenthesisSymbol(t) == '('){
				stackPush(opStack, t);
			} else {
				while (! (stackEmpty(opStack) || (tokenIsParenthesis(stackTop(opStack)) && tokenGetParenthesisSymbol(stackTop(opStack)) == '('))){
					queuePush(q, stackTop(opStack));
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

	deleteStack(&opStack);
	return q;
}

void computeExpressions(FILE *input){
	//?? output (ligne vide)
	char* line = NULL;
	size_t n;
	Queue* q;
	Queue* outputQ;
	Token* t;


	while (!feof(input)){
		getline(&line, &n, input);
		q = stringToTokenQueue(line);
		if (!queueEmpty(q)){
			printf("Infix : ");
			queueDump(stdout, q, &queueDumpCallback);
			printf("\nPostfix : ");
			outputQ = shuntingYard(q);
			queueDump(stdout, outputQ, &queueDumpCallback);
			printf("\n");
		}

		while(!queueEmpty(q)){
			t = (Token*) queueTop(q);
			deleteToken(&t);
			queuePop(q);
		}
		deleteQueue(&q);
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
