10 DIM D(10),C(8)
20 DATA 1,2
30 DATA 10,20,30,40
40 READ A,B,C(A),D(B)
50 PRINT A,B,C(A),D(B)
60 RESTORE 2
70 READ D(B)
80 PRINT B, D(B)
90 END
