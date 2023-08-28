 include 'emu8086.inc'
org 100h   ; Origin address where the program will be loaded

mov si, offset str1 ; Load address of the first string
mov di, offset str2 ; Load address of the second string

cld         ; Clear the direction flag (forward movement)
mov cx, 20  ; Set the maximum number of characters to compare

repe cmpsb  ; Compare strings while characters are equal
je stringsEqual ; If strings are equal, jump to the "stringsEqual" label

; If the comparison result is not equal, the zero flag will be cleared,
; and the "je" condition will not be met.

stringsNotEqual:
    ; DOS function to print string
    lea dx, [msgNotEqual]  
    print    "The strings are not equal."
         ; mov ah, 9 
   ; int 21h
    jmp exit

stringsEqual:
     ; DOS function to print string 
                                    
                                    print "The strings are equal."
    lea dx, [msgEqual]  
   ; mov ah, 9
    ;int 21h
   ;
exit:
    hlt

str1 db "world2", 0
str2 db "hello, world", 0

msgEqual db "The strings are equal.", 0
msgNotEqual db "The strings are not equal.", 0


