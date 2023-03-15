
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
.model small
.stack 100h
.data 

a db ? ; here a=name , db=type , ?=unassigned value
b db ? ; here a=name , db=type , ?=unassigned value
.code
main proc 
    
    mov ax, @data
    mov ds,ax 
    
    
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
    
     
      
    
    add ch,cl
    sub ch,30h
   
    
   
   
    
    
    
    ;display output
    mov ah,2
    mov dl,ch
    int 21h
    
    mov ah,4ch
    int 21h
    main endp
end main


ret












