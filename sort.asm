include 'emu8086.inc'

lea si, arr
mov cx, 4
dec cx
mov j, cx


main:
mov cx, j
cmp i,cx
je oneloop


check:
mov bl, [si]
inc si
inc si
mov bh, [si]
cmp bh, bl
jb swap
loop main


swap:
  dec si
  dec si
  mov [si], bh
  inc si
  inc si
  mov [si], bl
  loop main

oneloop:
mov cx, j
inc cx
lea di, arr

pr:
;cmp cx, 0
;je halt
mov ax, [di]
call print_num_uns
inc di
inc di
loop pr

halt:
hlt

arr dw 1,5,2,3
i dw 0
j dw 0
one dw 0
two dw 0
;temp db 0
define_print_num_uns