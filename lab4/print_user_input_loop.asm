
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
.model small
.stack 100h
.data 
MSG DB 0AH,0DH,'Enter a Character:$'

a db ? ; here a=name , db=type , ?=unassigned value
.code
main proc 
    
    mov ax, @data
    mov ds,ax
    MOV CX,50
    
    
     
    
    LEA DX,MSG ;LEA=Load Effective Address;Returns the address of the string
    MOV AH,9  ;display multiple characters
    INT 21H
    
    mov ah,1; for input
    int 21h; interrupt
    ;Data is by default stored in AL
    mov a,al
    mov ch,a
     
    
     ;print newline
    mov ah,2
    mov dl,0AH
    int 21h 
    
     ;move character to the left
    mov ah,2
    mov dl,0DH
    int 21h
    
   
    display:  
    mov ah,2
    mov dl,ch
    int 21h
    dec cx
    
    
    JNZ display
    
            
       
   
    
   Exit:
    MOV AH,4CH
    INT 21h

    main endp
end main


ret












