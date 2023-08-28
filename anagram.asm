; multi-segment executable file template.

data segment
    ; add your data here!
    true db "True$"
    false db "False$"
    
    str1 db "choyan$"
    str2 db "tirtho$"
    
    fr1 db 26 dup(0)
    
    fr2 db 26 dup(0)
    n db 6  
    n1 db 0
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:
; set segment registers:
    mov ax, data
    mov ds, ax
    mov es, ax
  
     
    mov di,0
    mov si,0
    mov cx,word ptr n 
    for_:
        mov ah,0
        mov al,str1[si]        
        mov di,ax
        sub di,97d
         
        inc fr1[di]
        inc si
        loop for_
        
   
    mov di,0
    mov si,0
    mov cx,word ptr n
    for_2:
        mov ah,0
        mov al,str2[si]        
        mov di,ax
        sub di,97d
         
        inc fr2[di]
        inc si
        loop for_2
     
    mov cx,26d
    mov dx,0
    mov si,0
    final:
        mov al,fr1[si]
        
        cmp al,fr2[si]
        
        jne not_ana
        
        inc si
        loop final
    mov ah,09
    lea dx,true
    int 21h
    jmp end
        
    not_ana:
          mov ah,09
          lea dx,false
          int 21h
    
    end: 
          
    mov ax, 4c00h ; exit to operating system.
    int 21h    
ends

end start ; set entry point and stop the assembler.

