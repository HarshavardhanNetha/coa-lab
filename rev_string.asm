include 'emu8086.inc'

;org 100h

;print complete 
;mov dl, offset str
;mov ah, 9
;int 21h

        
lea si, str
mov cx,si

reverse:
mov bl, [si]
cmp bl, '$'
je exit
mov dl, bl
;mov ah, 2
;int 21h
inc si
jmp reverse
     
exit:
dec si
mov dl, [si]
mov ah,2
int 21h
cmp si, cx
jne exit
ret
str db 'Hello$'
dollar db '$'