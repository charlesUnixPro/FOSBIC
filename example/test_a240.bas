*  This test is synthetic
10   READ M
20   IF M < 1 GOTO 400
30   IF M > 4 GOTO 400
100  ON M GOSUB 200,220,240,260
110  GOTO 300

200  GOSUB 1000
210  GOTO 300
220  GOSUB 2000
230  GOTO 300
240  GOSUB 3000
250  GOTO 300
260  GOSUB 4000
270  GOTO 300

300  PRINT 'HAUPTPROGRAMM'
310  GOTO 10

400  PRINT 'ENDE'
410  STOP

1000 PRINT 'UNTERPROGRAMM 1000'
1010 RETURN

2000 PRINT 'UNTERPROGRAMM 2000'
2010 RETURN

3000 PRINT 'UNTERPROGRAMM 3000'
3010 RETURN

4000 PRINT 'UNTERPROGRAMM 4000'
4010 RETURN

9999 END
1, 4, 2, 3, 9999