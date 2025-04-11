.model small
.stack 100h

.data
msg1 db "Enter the num1 : $"
n1 db 0
msg2 db "Enter the num2 : $"
n2 db 0
msg3 db "Substraction of num1 and num2 : $"
n3 db 0

.code
start:
mov ax,@data
mov ds,ax

mov dx,offset msg1
mov ah,09h
int 21h

mov ah,01h
int 21h

mov dl,al
sub dl,48
mov n1,dl

mov dl,0ah
mov ah,02h
int 21h

mov dx,offset msg2
mov ah,09h
int 21h

mov ah,01h
int 21h

mov dl,al
sub dl,48
mov n2,dl

mov dl,0ah
mov ah,02h
int 21h