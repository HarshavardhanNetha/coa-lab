; polindrome of a number

include 'emu8086.inc'

call scan_num
mov ax, cx
mov cx, 0
mov temp, ax
mov bx, 10
mov n, ax

rev:
mov dx, 0
mov ax, n
div bx

mov n, ax
mov ax, 10
mov rem, dx
mul cx
mov cx,ax
add cx, rem

mov ax,n
cmp ax, 0
je exit
jmp rev

exit:
 mov ax,cx
 ;call print_num_uns

mov dx, 0
div temp
cmp dx, 0
je polindrome
print 'not polindrome'
hlt

polindrome:
    print 'polindrome'


hlt
n dw 0 
temp dw 0
res dw 0
rem dw 0
define_print_num_uns
define_scan_num