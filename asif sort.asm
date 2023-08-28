org 100h   ; Origin address where the program will be loaded

;mov cx, 10  ; Number of elements in the array
mov si, 0   ; Initialize outer loop counter

outerLoop:
    mov di, 0   ; Initialize inner loop counter
innerLoop:
    mov al, [arr+di]   ; Load array element at index di into AX
    cmp al, [arr+di+1] ; Compare with the next element in the array
    jle noSwap         ; Jump if not greater (no swap needed)
    
    ; Swap elements if needed
    xchg al, [arr+di+1]
    mov [arr+di], al

noSwap:
    add di, 1      ; Move to the next element in the inner loop
    cmp di, 9      ; Compare with the second-to-last element index
    jl innerLoop    ; Jump if less (continue inner loop)

    add si, 1 
         ; Move to the next element in the outer loop
    cmp si, 9      ; Compare with the second-to-last element index
    jl outerLoop    ; Jump if less (continue outer loop)

;mov ax, 4C00h  ; Exit program with code 0
;int 21h        ; Interrupt 21h (DOS interrupt)

arr db 23, 42, 4, 16, 8, 15, 55, 9, 22, 10  ; Array of 10 integers


