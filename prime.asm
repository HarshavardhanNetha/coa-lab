;prime number
include 'emu8086.inc'

call scan_num

mov bl, 2
mov al, cl

mov dl, al

check:
cmp bl,dl
je halt

mov ah, 0
mov al, dl
div bl
cmp ah, 0
je prime
inc bl
jmp check
ret

prime:
print 'not prime'
hlt

halt:
print 'prime'
ret

define_scan_num