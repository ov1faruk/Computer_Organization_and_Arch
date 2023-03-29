.MODEL SMALL
.STACK 100H
.DATA
    msg DB 6 
.CODE

MAIN PROC

    MOV AX , @DATA
    MOV DS , AX

    MOV AH, 0AH 
    MOV DX, OFFSET msg
    INT 21H 
EXIT:
    MOV AH, 4CH 
    INT 21H 

MAIN ENDP
