 10 PRINT '12345678901234567890123456789012345678901234567890123456789012345678'
 20 PRINT '          OHNE ','PRINT USING',' ','MIT PRINT USING'
 30 %        ##    #.#####^^^^
 40 LET F = 1
 50 PRINT 0, F, TAB(32),'*';
 60 PRINT USING 30, 0; F
 70 FOR I = 1 TO 20
 80   LET F = F * I
 90   PRINT I, F,TAB(32),'*';
100   PRINT USING 30, I; F
110 NEXT I
120 END