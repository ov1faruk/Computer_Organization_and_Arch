.MODEL SMALL
.STACK 100h
.DATA
.CODE

MAIN PROC
    MOV AX, 14
    MOV BX, 5
    MOV CX, 6

   
    CMP AX, BX
    JG END 

   
    CMP CX, BX
    JG AXZERO

    
    MOV BX, 0
    JMP END

    AXZERO:
   
    MOV AX, 0

END:
    
    MOV AH, 4CH
    MOV BX,0
    INT 21h

MAIN ENDP
END MAIN
