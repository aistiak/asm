
.model small
.stack 100h
.data
.code
msg1 db 'Enter String:$'
msg2 db 'Reverse String:$'
count DW 0
main proc
mov ax,@data ;initialize data segment
mov ds,ax
lea dx,msg1
mov ah,9
int 21h
xor cx,cx
mov ah,1
int 21h
input:
cmp al,0dh
je end_input
push ax
inc cx
int 21h
jmp input
end_input:
mov dx,0dh ;carriage and new line
mov ah,2
int 21h
mov dx,0ah
mov ah,2
int 21h
mov bx,50h
xchg bx,sp ;swap sp pointer
push 0020h
xchg bx,sp
inc count
loop1:
pop dx ;swap bx and sp
xchg bx,sp
push dx ; push to new stack
xchg bx,sp
inc count
loop loop1
lea dx, msg2
mov ah,9
int 21h
mov cx,count
mov count,0
push 0020h ; push 0020H onto the STACK
inc count
reverse:
xchg bx, sp ; swap bx and sp
pop dx ; pop a value from stack into dx
xchg bx, sp ; swap bx and sp
cmp dl, 20h
jne skip
mov ah, 2
loop2:
pop dx ; pop and show output
int 21h
dec count
jnz loop2
mov dx, 0020h
skip:
push dx
inc count
loop reverse
mov ah, 4ch
int 21h
main endp
end main