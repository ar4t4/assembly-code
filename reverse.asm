
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
 
 .data
s dw "asif",0
.code 
main proc
    
lea si,s
mov cx,4

l:
mov bx,[si]
push bx
inc si
loop l 
mov cx,4
l2:
pop dx 
mov ah,2
int 21h
loop l2


     


ret




