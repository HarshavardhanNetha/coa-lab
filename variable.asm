include 'emu8086.inc'

call scan_num  
mov varName, cx
MOV AX, varName
printn
call print_num_uns
                 
RET              
varName dw 0  
DEFINE_PRINT_NUM_UNS
define_scan_num  
end