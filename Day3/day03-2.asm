.model small
.stack 100h
.data 

msg1 db "Enter the number1 : $"
n1 db 0
msg2 db "Enter the number2 : $"
n2 db 0
msg3 db "Addition of num1 and num2: $"
n3 db 0

.code 
start:
mov ax,@data
mov ds,ax

mov dx,offset msg1  ;to print the msg
mov ah,09h
int 21h

mov ah,01h ;read input
int 21h

mov dl,al  ;48+2=50
sub dl,48  ;50-48=2
mov n1,dl  ;=2

mov dl,0ah  ;next line 
mov ah,02h
int 21h

mov dx,offset msg2  
mov ah,09h
int 21h

mov ah,01h 
int 21h

mov dl,al  ;48+3=51
sub dl,48  ;51-48=3
mov n2,dl  ;3

mov dl,0ah  
mov ah,02h
int 21h

mov dx,offset msg3 
mov ah,09h
int 21h

mov dl,n1  ;dl=2
add dl,n2   ;dl=3+2=5
add dl,48  ;dl=5+48=53

mov ah,02h   ;
int 21h

mov ax,4c00h
int 21h

end start