.MODEL SMALL        
.STACK 100h         
.DATA              
    MSG DB 'Enter a number: $'  
.CODE  
           
MAIN PROC 

    MOV AX, @DATA
    MOV DS, AX

    MOV AH, 09h     
    LEA DX, MSG 
    INT 21h         

    MOV AH, 01h     
    INT 21h         
    SUB AL, '0'     

    CMP AL, 1       
    JE ADDITION          

    CMP AL, 2       
    JE SUBTRACTION     

    CMP AL, 3       
    JE DISPLAY        

    MOV AH, 02h     
    MOV DL, 'c'     
    INT 21h         
    JMP EXIT      

    ADDITION:
        MOV AH, 02h     
        MOV DL, '5'     
        INT 21h         
        JMP EXIT      
    
    SUBTRACTION:
        MOV AH, 02h     
        MOV DL, '1'     
        INT 21h         
        JMP EXIT      
    
    DISPLAY:
        MOV AH, 02h     
        MOV DL, AL      
        ADD DL, '0'     
        INT 21h         
    
    EXIT:
        MOV AH, 4CH     
        INT 21h         

MAIN ENDP           
END MAIN            