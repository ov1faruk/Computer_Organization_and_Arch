org 100h
.model small
.stack 100h
.data
  message db 'Value of CL is:$' 

.code
main proc
mov ax, @data
 mov ds,ax 
     

    mov al, 'B'          ; set value of AL to 'B'
    cmp al, 'A'          ; compare AL with 'A'
    jl less_than_A       ; if AL < 'A', jump to less_than_A label

greater_than_or_equal:
    mov cl, 5            ; put 5 in CL
    jmp print_message

less_than_A:
    mov cl, 6            ; put 6 in CL

print_message:
    mov ah, 09h          ; DOS function to print string
    lea dx,message
    int 21h
    add cl, '0'          ; convert value of CL to ASCII digit
    mov dl, cl           ; move value of CL to DL for printing
    mov ah, 02h          ; DOS function to print character
    int 21h

    mov ah, 4ch          ; DOS exit function
    int 21h
