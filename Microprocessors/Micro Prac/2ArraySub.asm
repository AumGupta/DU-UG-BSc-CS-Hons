.MODEL SMALL
.DATA
	ARR1	DW  1, 2, 3, 4, 5
	ARR2  	DW  6, 7, 8, 9, 1
	RESULT	DW  0, 0, 0, 0, 0
.CODE
.STARTUP
	MOV	CX, 5
	MOV	SI, 0
	MOV	DI, 0
	MOV	BX, 0

L1:	MOV	AX, [ARR1+SI]
	SUB	AX, [ARR2+DI]
	MOV 	[RESULT + BX], AX
	SUB	SI, 2
	SUB	DI, 2
	SUB	BX, 2
	LOOP L1
.EXIT
END