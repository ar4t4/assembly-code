include 'emu8086.inc'
mov cx,10 
mov al,1
mov bl,1
start:
  ; mov bl,al 
  inc bl
  and bl,1 
  jnz asif
     print 'hello' 
  
 
 
  
 asif: 
 loop start
