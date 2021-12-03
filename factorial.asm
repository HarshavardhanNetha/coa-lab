include 'emu8086.inc'

call scan_num
MOV AX, 1
MOV bx, cx

FACTORIAL:

CMP BX, 1
JNE CHEYYI
CALL PRINT_NUM_UNS
RET

CHEYYI:
    MUL BX
    DEC BX
    JMP FACTORIAL
     
                 
RET
DEFINE_PRINT_NUM_UNS
define_scan_num                
 