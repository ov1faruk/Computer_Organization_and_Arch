
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
.model small
.stack 100h
.data 
MSG DB 0AH,0DH,'Enter a Number:$'
msg2 db 0AH,0DH,'Positive $' 
msg3 db ,' Negative$'
a db ? ; here a=name , db=type , ?=unassigned value
.code
main proc 
    
    mov ax, @data
    mov ds,ax
     
    
    LEA DX,MSG ;LEA=Load Effective Address;Returns the address of the string
    MOV AH,9  ;display multiple characters
    INT 21H
    
    mov ah,1; for input
    int 21h; interrupt
    ;Data is by default stored in AL
    mov a,al
    mov ch,a 
    
    cmp ch,cl
    jl  negative
    jg positive
    
    
    
  
    
    
    positive: 
    LEA DX,msg2 ;LEA=Load Effective Address;Returns the address of the string
    MOV AH,9  ;display multiple characters
    INT 21H
    jmp exit
   
    negative:  
    LEA DX,msg3 ;LEA=Load Effective Address;Returns the address of the string
    MOV AH,9  ;display multiple characters
    INT 21H 
    jmp exit
    
    
   
            
       
   
    
   Exit:
    MOV AH,4CH
    INT 21h

    main endp
end main


ret













