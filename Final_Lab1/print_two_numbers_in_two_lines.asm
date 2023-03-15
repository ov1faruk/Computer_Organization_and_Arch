
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
    
     ;print newline
    mov ah,2
    mov dl,0AH
    int 21h 
    
    ;move character to the left
    mov ah,2
    mov dl,0DH
    int 21h
    
     mov cl,7
    add cl,30h
    
     ;display output
    mov ah,2
    mov dl,cl
    int 21h
    
              

    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN

