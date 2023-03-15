.MODEL SMALL
.STACK 100h
.DATA
a db ? ; here a=name , db=type , ?=unassigned value
.CODE

MAIN PROC

MOV CL,1
add cl,30h
MOV CH,2
add ch,30h
    
mov ah,1
int 21h 


CMP al, 'a'
JE show1
    
jmp exit
    
CMP al, 'b'
JE show2
     
jmp exit    
   
   
show1:


    MOV AH, 2
    MOV DL, CL
    INT 21h
    
show2:

    MOV AH, 2
    MOV DL, CH
    INT 21h 
    
    
exit:
    MOV AH,4CH
    INT 21h
    


   


MAIN ENDP
END MAIN

ret