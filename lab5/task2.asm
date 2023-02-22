.MODEL SMALL
.STACK 100h
.DATA

.CODE


MAIN PROC 
    
    MOV AL, 1
    CMP AL, 0
    JL GO
    MOV AH, 0 
    JMP Exit

    
    GO:
    MOV AH, 0xFFh 
    
    
MOV DL,AH
INT 21h    
MOV AH,2 

Exit:
MOV AH,4CH
INT 21h


MAIN ENDP
END MAIN
