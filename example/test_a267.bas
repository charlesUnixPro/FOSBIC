*8
   PRINT 'STATISTISCHE MASSZAHLEN'
   PRINT'-----------------------'
   REM INITIALISIERUNG
   LET Z=0
10 LET D1=10**98
   LET D2=-D1
   LET X1=0
   LET X2=0
   LET N=0
   LET Z=Z+1
   REM DATENEINLESUNG UND VERARBEITUNG
   READ A$
   IF A$ = 'ENDE' GOTO 50
   IF A$ = 'MIT' GOTO 15
   LET F=1
15 READ X
   IF X$ = 'STOP' GOTO 40
   IF A$ = 'OHNE' GOTO 17
   READ F
17 IF D1 < X GOTO 20
   LET D1=X
20 IF D2 GE X GOTO 30
   LET D2=X
30 LET X1=X1+X*F
   LET X2=X2+X**2*F
   LET N=N+F
   GOTO 15
40 REM GESAMTAUSWERTUNG
   PRINT
   PRINT 'GESAMTAUSWERTUNG *';A$;'* HAEUFIGKEITEN'
   PRINT
   PRINT '      SERIE','   ANZAHL DER','      SPANN-','      MITTEL-',
   PRINT '     VARIANZ','      STANDARD-','   VARIATIONS-'
   PRINT ' ','       WERTE','      WEITE','       WERT',' ','     ABWEICHUNG',
   PRINT '   KOEFFIZIENT'
   PRINT
   PRINT Z,
   PRINT N,
   PRINT ABS(D1-D2),
   PRINT X1/N,
   PRINT (N*X2-X1**2)/(N*(N-1)),
   PRINT SQR((N*X2-X1**2)/(N*(N-1))),
   PRINT SQR((N*X2-X1**2)/(N*(N-1)))/(X1/N)*100.0
   PRINT
   GOTO 10
50 PRINT
   PRINT '--------ENDE---------'
   END LIST DATA
'MIT'
10.15,1,10.25,2,9.85,3,10.10,1,9.70,2,9.95,3,10.05,4,10,5
'STOP'
'OHNE'
1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17
'STOP'
'ENDE'
*
   
   