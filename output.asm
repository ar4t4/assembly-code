.MODEL SMALL
.STACK 100h
.DATA        
     ARR  DB   10,20,30,40,50   ;array declaration
.CODE
    MAIN PROC
        MOV AX,@DATA
        MOV DS,AX
        MOV CX,5
        MOV SI,0 
       
       
OUTPUT:
          MOV DL, ARR[SI]
          ADD DL,48 ;convert to asking 
                 MOV AH,2
          INT 21H
          INC SI
        LOOP OUTPUT 

     MAIN ENDP
END MAIN
