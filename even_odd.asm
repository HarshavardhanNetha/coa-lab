include 'emu8086.inc'

MOV AL, 11
MOV BL, 2
DIV BL
CMP AH,0
JE EVEN
PRINT 'odd'
RET

EVEN:
    PRINT 'even'