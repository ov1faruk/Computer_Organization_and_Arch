
.MODEL SMALL
.STACK 100h
.DATA

.CODE


MAIN PROC
    MOV AX,-1
    CMP AX,0
    JL GO
    JMP Exit

    GO:
    MOV BX, -1
    mov AH,2
    mov DX,BX
    int 21h

Exit:
MOV AH,4CH
INT 21h


MAIN ENDP
END MAIN
