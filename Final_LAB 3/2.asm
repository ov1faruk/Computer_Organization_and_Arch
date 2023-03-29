.MODEL SMALL        
.STACK 100h         
.DATA              
.CODE              
;If the value of DL and CL is below 3 then it prints B.
MAIN PROC           
    MOV AH, 02h     
    MOV BL, 'b'     
    MOV DL, 2       
    MOV CL, 1       

    CMP DL, 3       
    JGE EXIT      
    
    CMP CL, 3       
    JGE EXIT      
    
    MOV DL, BL      
    INT 21h         
    
EXIT:
    MOV AH, 4CH     
    INT 21h         

MAIN ENDP           
END MAIN            


