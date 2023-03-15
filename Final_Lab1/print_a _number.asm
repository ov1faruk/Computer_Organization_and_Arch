
ORG 100H
.MODEL SMALL
.STACK 100H
.DATA


.CODE
MAIN PROC
    
   
    mov ch,5
    add ch,30h
        
    ;display output
    mov ah,2
    mov dl,ch
    int 21h
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN






