.MODEL SMALL
.STACK 100h
.DATA
    input DB ?
    msg DB 'Enter a character: $'
.CODE

MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
continue:
    MOV AH, 9
    LEA DX, msg
    INT 21h
        
    MOV AH, 1
    INT 21h
    MOV input, AL 
    
    CMP input, 0DH ; check for ASCII value of 'Enter' key
    JE Exit
    
    MOV AH, 2 
    MOV DL, input 
    INT 21h 
    
    JMP continue

Exit:
    MOV AH, 4CH 
    INT 21h 
    
MAIN ENDP
END MAIN