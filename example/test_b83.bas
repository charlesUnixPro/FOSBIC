10 DIM A(10,1), B(10,10)
20 READ N
30 MAT LET A=ZER(1,N)
40 MAT LET B=ZER(N,N)
50 MAT READ A,B
60 MAT LET A=A*B
70 MAT PRINT A
80 DATA 4
90 DATA 1,2,3,4
95 DATA 2,2,2,2, 3,3,3,3, 4,4,4,4, 5,5,5,5
99 END