.MODEL SMALL
.STACK 100h
.DATA
.CODE

MAIN PROC
    MOV AX, 9
    MOV BX, 5
    MOV CX, 1

   
    CMP AX, BX
    JL DXZERO
    CMP BX, CX
    JL DXZERO

    
    MOV DX, 1
    JMP END

DXZERO:
    MOV DX, 0

END:
    MOV AH, 4CH
    INT 21h

MAIN ENDP
END MAIN



