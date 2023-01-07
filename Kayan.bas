DIM z AS LONG
 
COLOR , 1
 
CLS
 
' mlen - kayacak metnin uzunlugu
 
'row - kayacak yazinin satir numarasi
 
'col - kayacak yazinin sutun numarasi
 
mlen = 78: row = 7: col = 2: stop$ = CHR$(27)
 
 
GOSUB baslik
 
GOSUB box
 
' m$  kayacak metin
 
m$ = "Turkiye'nin en buyuk takimi GALATASARAY   . . . . . . . . . . .               "
 
LOCATE row, col: COLOR 10, 4
 
banstart:
 
      FOR z = 1 TO LEN(m$)
 
          n = n + 1: newcol = col + mlen - n
 
          LOCATE row, col: PRINT RIGHT$(m$, LEN(m$) - n)
 
           
 
          LOCATE row, newcol: PRINT LEFT$(m$, n)
 
          FOR i = 1 TO 110000: NEXT i  'metnin kayma hizi. rakam buyudukce yavas kayar
 
          IF INKEY$ = stop$ THEN END
 
      NEXT z
 
     
 
n = 0: p = 0: newcol = 0
 
GOTO banstart
 
END
 
box:
 
LOCATE row - 1, col - 1: PRINT CHR$(204); STRING$(78, 205); CHR$(185)
 
     FOR i = row TO row + 1
 
         LOCATE i, 1: PRINT CHR$(186)
 
         LOCATE i, 80: PRINT CHR$(186)
 
     NEXT
 
LOCATE row + 1, 1: PRINT CHR$(204); STRING$(78, 205); CHR$(185)
 
RETURN
 
baslik:
 
LOCATE 1, 1: PRINT CHR$(201); STRING$(78, 205); CHR$(187)
 
LOCATE 3, 1: PRINT CHR$(200); STRING$(78, 205); CHR$(188)
 
FOR a = 2 TO 23
 
  LOCATE a, 1: PRINT CHR$(186): LOCATE a, 80: PRINT CHR$(186)
 
NEXT a
 
LOCATE 23, 1: PRINT CHR$(200); STRING$(78, 205); CHR$(188)
 
LOCATE 2, 2
 
COLOR 0, 7: PRINT "      K A Y A N   Y A Z I   O R N E G I          By: Sener DURMAZ  23.05.2021  "
 
LOCATE 22, 3: PRINT "ESC_Cikis"
 
COLOR 7, 1
 
RETURN
