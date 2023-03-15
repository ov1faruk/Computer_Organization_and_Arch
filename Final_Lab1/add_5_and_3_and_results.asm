.model small
.stack 100h
.data

.code
main proc
    MOV BL,5
    ADD BL,3
    ADD BL,30h    
    
    MOV AH,2 
    MOV DL,BL
    INT 21h
    
     
    MOV AH,4ch
    INT 21h
    main endp
end main
