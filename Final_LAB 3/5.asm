.MODEL SMALL
.STACK 100h
.DATA
    A DB ?
    MSG DB 'Enter a character: $'
.CODE

MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
    MOV AH, 9
    LEA DX, MSG
    INT 21h
        
    MOV AH, 1
    INT 21h
    MOV A, AL 
    
    MOV CX, 30
    MOV BX, 0
DISPLAY:
    MOV AH, 2
    MOV DL, A
    INT 21h
    INC BX
    
    CMP BX, 10
    JNE CONTINUE
    
    MOV AH, 2
    MOV DL, 0DH
    INT 21h
    MOV DL, 0AH
    INT 21h
    MOV BX, 0
CONTINUE:
    LOOP DISPLAY 
    
    MOV AH, 4CH
    INT 21h 
    
MAIN ENDP
END MAIN



