;perfect number

include 'emu8086.inc'

mov ax, 6
mov cx, ax
dec cx
mov num,ax

label:
 mov ax, num
 mov dx, 0
 div cx
 cmp dx, 0
 jne perfect
 add pnum, cx
 loop label
 jmp final
 ret  

perfect:
 loop label

final:
 mov ax,num
 mov dx, 0
 div pnum
 cmp ax, 1
 je printperfect
 print 'not perfect' 
 hlt

printperfect:
 print 'perfect'
 
num dw 0
pnum dw 0