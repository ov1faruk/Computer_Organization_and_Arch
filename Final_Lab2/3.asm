INCLUDE "EMU8086.INC"
.MODEL SMALL    
.STACK 100H     

.DATA          

.CODE           

MAIN PROC      

; Load test data into registers
MOV AX, 40  
MOV BX, 20
MOV CX, 3  

; Compare AX with BX
CMP AX, BX
JE NEXT_STEP    ; Jump to NEXT_STEP if they are equal
JG FAILED_CONDITION    ; Jump to FAILED_CONDITION if AX > BX
NEXT_STEP:
; If AX < BX, set AX to 0
MOV AX, 0
PRINTN "AX LESS THAN BX"

JMP EXIT_PROGRAM   ; Jump to the end of the program

FAILED_CONDITION:
; Compare BX with CX
CMP BX , CX
JE SUCCESSFUL_RESULT    ; Jump to SUCCESSFUL_RESULT if they are equal
JG UNSUCCESSFUL_RESULT    ; Jump to UNSUCCESSFUL_RESULT if BX > CX

SUCCESSFUL_RESULT:
; If BX < CX, set BX to 0
MOV BX, 0

PRINTN "BX LESS THAN CX"

JMP EXIT_PROGRAM   ; Jump to the end of the program

UNSUCCESSFUL_RESULT:
; If none of the above conditions are met, set CX to 0
MOV CX, 0
PRINTN "MOV CX TO O"

JMP EXIT_PROGRAM   ; Jump to the end of the program

EXIT_PROGRAM:
; Return control to DOS
MOV AH, 4CH
INT 21H

MAIN ENDP      

END MAIN        