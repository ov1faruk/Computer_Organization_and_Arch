
.MODEL SMALL
.STACK 100h
.DATA

.CODE


MAIN PROC
    MOV AL,1
    CMP AL,0
    JL GO
    MOV AH,0
    

    GO:
    MOV AH,0xFFh
    ;mov AH,2
    mov DL,AH
    int 21h

Exit:
MOV AH,4CH
INT 21h


MAIN ENDP
END MAIN
