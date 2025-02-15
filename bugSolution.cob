```cobol
01  WS-AREA.                         
    05 WS-NUMBER PIC 9(5) VALUE 0. 
    05 WS-FLAG PIC X VALUE 'N'.
    05 WS-OVERFLOW PIC 9 VALUE 0. 

PROCEDURE DIVISION.
    PERFORM UNTIL WS-FLAG = 'Y'
       DISPLAY 'Enter a number (0 to exit): '
       ACCEPT WS-NUMBER
       IF WS-NUMBER = 0 THEN
           MOVE 'Y' TO WS-FLAG
       ELSE
           IF WS-NUMBER > 2147483647 / 2 THEN
              MOVE 1 TO WS-OVERFLOW 
              DISPLAY "Overflow detected!" 
           ELSE
               COMPUTE WS-NUMBER = WS-NUMBER * 2
               DISPLAY 'Doubled number: ' WS-NUMBER
           END-IF
       END-IF
    END-PERFORM.
    STOP RUN.
```