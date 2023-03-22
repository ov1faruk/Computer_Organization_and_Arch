
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
.model small
.stack 100h
.data
a db ? ; here a=name , db=type , ?=unassigned value 

.code
main proc
      mov ax, @data
    mov ds,ax
     
     mov ah,1; for input
    int 21h; interrupt
     ;Data is by default stored in AL
    mov a,al
    mov ch,a

    mov al,'A'
    mov bl,'B'
   
    cmp al,'A'
    je carriage_return
    cmp bl, 'B'
    je line_feed
   
    
  
   
    
    carriage_return:
    ;move character to the left
    mov ah,2
    mov dl,0DH
    int 21h
    mov ah,1
    int 21h
    
    line_feed:
    
    ;print newline
    mov ah,2
    mov dl,0AH
    int 21h 
    
    
    mov ah,1
    int 21h
   
       
    

   
    
    exit:
        
    mov ah,4ch
    int 21h







