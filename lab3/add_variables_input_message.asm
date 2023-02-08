
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
.model small
.stack 100h
.data 
MSG DB 0AH,0DH,'?$'
msg2 db 0AH,0DH,'The sum of $' 
msg3 db ,' and $'
msg4 db ,' is:$'
a db ? ; here a=name , db=type , ?=unassigned value
b db ? ; here a=name , db=type , ?=unassigned value
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
    
    
    
    mov ah,1; for input
    int 21h; interrupt
    ;Data is by default stored in AL
    mov b,al
    mov cl,b 
    
     
    LEA DX,msg2 ;LEA=Load Effective Address;Returns the address of the string
    MOV AH,9  ;display multiple characters
    INT 21H
    
    ;display output
    mov ah,2
    mov dl,ch
    int 21h
    
      
    LEA DX,msg3 ;LEA=Load Effective Address;Returns the address of the string
    MOV AH,9  ;display multiple characters
    INT 21H
    
    ;display output
    mov ah,2
    mov dl,cl
    int 21h
    
       
    LEA DX,msg4 ;LEA=Load Effective Address;Returns the address of the string
    MOV AH,9  ;display multiple characters
    INT 21H
    
    add ch,cl
    sub ch,96
    add ch,48
    
   
   
    
    
    
    ;display output
    mov ah,2
    mov dl,ch
    int 21h
    
    mov ah,4ch
    int 21h
    main endp
end main


ret













