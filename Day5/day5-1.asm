.model small
.stack 100h

.data
msg db "Enter the 3 digit number: $"
h db 0  ;1
t db 0  ;2
o db 0  ;3
h1 db 0  ;100
dig db 0  ;123
rh db 0
rt db 0

.code 
start:

mov ax,@data
mov ds,ax

mov dx,offset msg
mov ah,09h
int 21h

mov ah,01h  ;al=1+48=49
int 21h

mov dl,al  ;dl=49
sub dl,48  ;dl=49-48=1
mov h,dl   ;h=1

mov ah,01h  
int 21h

mov dl,al
sub dl,48
mov t,dl

mov ah,01h
int 21h

mov dl,al
sub dl,48
mov o,dl

mov al,h
mov bl,100
mul bl

mov h1,al  ;h1=100

mov al,t  ;al=2
mov bl,10  ;bl=10
mul bl   ;al=2*10=20

mov dl,al  ;dl=20
add dl,h1  ;dl=20+100=120
add dl,o   ;dl=120+3=123

mov dig,dl  ;dig=123

mov dl,10
mov ah,02h
int 21h

mov ah,00
mov al,dig ;al=123
mov bl,100 ; bl=100
div bl   ; al=123/100=1  rh=23

mov rh,ah
mov dl,al  ;dl
add dl,48
mov ah,02h
int 21h

mov ah,00
mov al,rh  ;al=23
mov bl,10 ;bl=10
div bl  ;al=23/10=2  rt=3

mov rt,ah
mov dl,al  ;dl=3
add dl,48  ;dl=3+48=51
mov ah,02h
int 21h

mov dl,rt 
add dl,48
mov ah,02h
int 21h

mov ax,4c00h
int 21h

end