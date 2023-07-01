*8
10  REM EXPONENTIELLE GLAETTUNG ZWEITER ORDNUNG
21  COMMENT Y(T,1) = MESSWERTE
22  COMMENT Y(T,2) = MITTELWERT 1.ORDNUNG
23  COMMENT Y(T,3) = MITTELWERT 2.ORDNUNG
24  COMMENT Y(T,4) = PROGNOSEWERT
25  COMMENT A(T) = GRUNDWERT
26  COMMENT B(T) = ZEITSTEIGUNG
30  PRINT 'ARBEITSTABELLE'
35  READ N,Z,M,S
40  PRINT '**************'
41  PRINT 'GLAETTUNGSKONSTANTE','            Z=',Z
42  PRINT 'PERIODENANZAHL',' ','            N=',N
43  PRINT 'ANZAHL DER STARTWERTE','            M =',M
44  PRINT 'STARTPERIODE DER GLAETTUNG','            S=',S
50  PRINT  '   ZAHL DER','EFFEKTIVER','MITTELWERT 1.','MITTELWERT 2.',
55  PRINT  'PROGNOSEWERT'
60  PRINT  '   PERIODEN','ABSATZ IN','ORDNUNG IN T','ORDNUNG IN T','  FUER DIE'
65  PRINT '        ','PERIODE T','        ','         ','FOLGEPERIODE',
67  PRINT '  GRUNDWERT','  ZEITSTEIGUNG'
70  PRINT '       T','     Y(T)','      Y(T,2)','     Y(T,2)','     Y(T,4)  ',
75  PRINT '       A(T)','       B(T)'
90  PRINT
100 PRINT
110 DIM Y(30,4),A(30),B(30)
115 FOR T=1 TO N
120   READ Y(T,1)
125 NEXT T
130 FOR T=1 TO M
135   LET A(S)=A(S)+Y(T,1)
140   LET B(S)=B(S)+Y(T,1)*(T-(M+1)/2)
145   IF T >= S GOTO 155
150   PRINT T,Y(T,1)
155 NEXT T
156 LET A(S)=A(S)/M
157 LET B(S)=B(S)*12/(M*(M**2))
158 FOR T=S TO N
159   IF T > S GOTO 165
160   LET Y(T,2)=A(T)-((1-Z)/Z)*B(T)
161   LET Y(T,3)=A(T)-(2*(1-Z)/Z)*B(T)
162   LET Y(T,4)=A(T)+B(T)
163   GOTO 210
165   LET Y(T,2)=Z*Y(T,1)+(1-Z)*Y(T-1,2)
170   LET Y(T,3)=Z*Y(T,2)+(1-Z)*Y(T-1,3)
190   LET A(T)=2*Y(T,2)-Y(T,3)
200   LET B(T)=Y(T,3)-Y(T-1,3)
202   Y(T,4)=A(T)+B(T)
204   IF T <> S+1 GOTO 210
206   PRINT 'START DER GLAETTUNG'
210   PRINT T,Y(T,1),Y(T,2),Y(T,3),Y(T,4),A(T),B(T)
220 NEXT T
455 DATA 27,0.2,5,3
458 DATA 192,201,198,203,206,208,215,209,214,220,225,232,235,241,244,248,251
459 DATA 255,259,266,263,265,268,274,278,279,283
460 END