@ Type exercise 2 here

	INVOKE 1, 2, 3

	SETI R1, #1

	SETI R0, #0
	SUB R2, R2, R1
	SUB R3, R3, R1

	INVOKE 3, 0, 0
	INVOKE 4, 1, 0

	INVOKE 3, 0, 2
	INVOKE 4, 1, 0

	INVOKE 3, 3, 0
	INVOKE 4, 1, 0

	INVOKE 3, 3, 2
	INVOKE 4, 1, 0

	STOP
