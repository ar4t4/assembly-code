
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
 
 include 'emu8086.inc'
org 100h

a db 1,1,0,0,0,0,0,0,0,0 
b db 0,0,0,0,0
mov bl,1
mov bh,1 
mov si,2 
;mov cx,8
start:
      mov al,a[si]
      add al,bl
      add al,bh
      cmp al,44
      jz asif
      mov a[si],al 
      mov bl,bh
      mov bh,al
      inc si
      cmp si,10 
      jl start


  mov cx,6
  mov si,10
  cse:
     print 'hello'
     mov bl,a[si];
         mov b[si-5],bl
         dec si
        ; cmp cx,1
        ; je end
         loop cse


    asif: print '44'
          jmp end 
          
    end:  hlt      