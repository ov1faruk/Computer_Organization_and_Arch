
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
.model small
.stack 100h
.data 

.code
main proc 
    

    mov cx, -1
    sub cx,30h  
    cmp cx,0
    jnl end_if
    neg cx
    
  
   
    
   
    ;display output
    mov ah,2
    mov dx,cx
    int 21h
    
      
    

    end_if:

    
    mov ah,4ch
    int 21h
    main endp
    
   
end main


ret
















