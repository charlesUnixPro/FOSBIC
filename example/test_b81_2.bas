10 REM SUBTRAKTION
20 REM MATRIX = MATRIX - (ARITHMETISCHER AUSDRUCK)
22 REM                   ODER
25 REM MATRIX = (ARITHMETISCHER AUSDRUCK) - MATRIX
30 DIM A(3), B(5), C(7)
40 MAT READ A
50 MAT LET B = A - (SIN(0.7854))
55 MAT LET C = (COS(A(2))) - A
60 MAT PRINT A, B, C
70 REM WIRKUNG UNTERSCHIEDLICH DIMENSIONIERTER
80 REM MATRIZEN BEACHTEN
85 DATA 1,2,3
90 END
