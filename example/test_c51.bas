5   REM THE FOLLOWING CARD SETS PRINT COLUMNS TO 8
*8
10  REM SPEICHERUNG ALPHANUMERISCHER KONSTANTER
20  LET A1$='AAAAA'
30  LET A2$='BAAAA'
40  LET A3$='CAAAA'
50  LET A4$='AAAAB'
60  FOR I=3216 TO 3265
70    PRINT I,I$,
80  NEXT I
90  PRINT
100 PRINT 'SPEICHERUNG UND CODIERUNG ALPHANUMERISCHER KONSTANTER'
110 PRINT A1,A1$,A2,A2$,A3,A3$,A4,A4$
120 DUMP
130 END
