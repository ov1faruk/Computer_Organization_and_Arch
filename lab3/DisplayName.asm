
ORG 100H
.MODEL SMALL
.STACK 100H
.DATA
MSG DB 0AH,0DH,'Mohammad Golam Faruk Ovi$' ; here msg=name , db=type , 0AH,0DH,'HELLO$'=value; 0AH for new line ;0DH=bring char to leftmost position

.CODE
MAIN PROC
    
    MOV AX, @data
    MOV DS,AX
    
    LEA DX,MSG ;LEA=Load Effective Address;Returns the address of the string
    MOV AH,9  ;display multiple characters
    INT 21H
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN







