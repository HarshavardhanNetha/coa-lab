include 'emu8086.inc'

;org 100h

lea si, arr
mov ah, 0
mov al, [si]
mov min, al
mov cl, 3

least: 

inc si
mov al, [si]
mov bl, al
cmp min, al
jb cont
mov min, bl
loop least
cmp cl,0
je done

cont:
  loop least
  ret
done:
    mov al, min
    call print_num_uns
    hlt

ret
define_print_num_uns
arr db 9,15,5
min db 0