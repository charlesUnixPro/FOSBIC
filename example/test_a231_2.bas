* Note original code in book is wrong: DATA in 289 must be at 415
10  REM MATRIZENMULTIPLIKATION
20  DIM A(3,4),B(4,3),C(3,3)
30  READ N1,M1,N2,M2,N3,M3
40  DATA 3,4,4,3,3,3
50  REM PRUEFEN DER INDEXBEREICHE
60  IF N1 <> M2 GOTO 360
70  IF N1 > N3 GOTO 360
80  IF M2 > M3 GOTO 350
90  REM EINLESEN DER MATRIZENELEMENTE
100 FOR I=1 TO N1
110   FOR K=1 TO M1
120     READ A(I,K)
130   NEXT K
140 NEXT I
150 FOR I=1 TO N2
160   FOR K=1 TO M2
170     READ B(I,K)
180   NEXT K
190 NEXT I
200 REM AUSFUEHRUNG DER MATRIZENMULTIPLIKATION
210 FOR I=1 TO N3
220   FOR K=1 TO M3
230     FOR R=1 TO M1
240       LET C(I,K) = C(I,K)+A(I,R)*B(R,K)
250     NEXT R
260   NEXT K
270 NEXT I
280 REM AUSGABE DER ERGEBNISSE
281 REM GEMAESS VORIGEM BEISPIEL
282 READ Z1, S1, Z2, S2, Z3, S3
283 REM Z1 = ANFANGSZEILE DER AUSGABE
284 REM Z2 = ENDZEILE DER AUSGABE
285 REM Z3 = ZEILENSCHRITTWEITE
286 REM S1 = ANFANGSSPALTE DER AUSGABE
287 REM S2 = ENDSPALTE DER AUSGABE
288 REM S3 = SPALTENSCHRITTWEITE
289 REM DATA 2,2,3,3,1,1
290 FOR I=Z1 TO Z2 STEP Z3
300   FOR K=S1 TO S2 STEP S3
310     PRINT C(I,K);
320   NEXT K
330   PRINT
340 NEXT I
350 GOTO 420
360 PRINT 'FEHLER IM INDEXBEREICH'
370 PRINT N1,M1
380 PRINT N2,M2
390 PRINT N3,M3
400 DATA 1,2,3,4,5,6,7,8,9,10,11,12
410 DATA 1,2,3,4,5,6,7,8,9,10,11,12
415 DATA 2,2,3,3,1,1
420 END
