.MODEL SMALL        ; Define memory model
.STACK 100h         ; Set stack size
.DATA              ; Declare data segment
.CODE              ; Declare code segment

MAIN PROC           ; Start of main procedure
    MOV AH, 02h     ; Initialize AH register with function number for printing character
    MOV BL, 'o'     ; Initialize BL register with ASCII value for 'o'
    MOV CL, 'e'     ; Initialize CL register with ASCII value for 'e'
    MOV DL, 3       ; Initialize DL register with the value being compared

    CMP DL, 1       ; Compare DL with 1
    JE O      ; If DL is equal to 1, jump to PRINT_O label
    
    CMP DL, 3       ; Compare DL with 3
    JE O      ; If DL is equal to 3, jump to PRINT_O label
    
    CMP DL, 2       ; Compare DL with 2
    JE E      ; If DL is equal to 2, jump to PRINT_E label
    
    CMP DL, 4       ; Compare DL with 4
    JE E      ; If DL is equal to 4, jump to PRINT_E label
    
    JMP END_IF      ; If none of the above conditions are met, jump to END_IF label

    O:            ; PRINT_O label
    MOV DL, BL      ; Load BL register into DL (ASCII value for 'o')
    INT 21h         ; Call interrupt 21h to print the character in DL
    
    JMP END_IF      ; Jump to the END_IF label

    E:            ; PRINT_E label
    MOV DL, CL      ; Load CL register into DL (ASCII value for 'e')
    INT 21h         ; Call interrupt 21h to print the character in DL

END_IF:             ; END_IF label
    MOV AH, 4CH     ; Set AH register to function number for terminating program
    INT 21h         ; Call interrupt 21h to terminate program

MAIN ENDP           ; End of main procedure
END MAIN            ; End of program

