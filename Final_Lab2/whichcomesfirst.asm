
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
.model small
.stack 100h
.data 

.code
main proc 
    

    mov al,'b'
    mov bl,'z'
   
    cmp al,bl
    jnbe else
    mov dl,al
    jmp display
    
  
   
    
    display:
    ;display output
    mov ah,2
    mov dl,al
    int 21h
    jmp exit
    
      
    

    else:
    mov dl,bl
    jmp display
    
    exit:
        
    mov ah,4ch
    int 21h
    main endp
    
   
end main


ret




