include 'emu8086.inc'
MOV AL, 10
MOV BL, 12
CMP AL,BL
JE EQUAL
PRINT 'Not equal dude!'
JMP NOTEQUAL
EQUAL:
    PRINT 'Yo! Equal they are!'
NOTEQUAL:
    RET