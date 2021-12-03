; armstrong

include 'emu8086.inc'

mov ax, 153
mov temp, ax
mov n, ax
mov bx, 10

arm:

mov ax, n
mov dx, 0
div bx
mov n, ax

mov ax, dx

mov num, dx
mul num
mul num

add res,ax

mov ax, n
mov dx, 0
div bx
cmp n,0
jne arm

mov ax, res
;mov dx, 0
;div temp
cmp ax, temp
je armstrong
print 'not armstrong'
CALL print_num_uns
hlt

armstrong:
print 'armstrong'              
hlt
define_print_num_uns
num dw 0
n dw 0
res dw 0
temp dw 0