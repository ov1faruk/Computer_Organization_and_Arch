.MODEL SMALL
.STACK 100h
.DATA
input db ?
output1 db '1'
output2 db '2'
.CODE

MAIN PROC

mov ah,1 ; read a character from input
int 21h


cmp al, 'a'
jne check_b ; jump to checking for "b" if input is not "a"

mov dl,1 ; print "1" if input is "a"
add dl,30h
mov ah,2
int 21h
jmp exit

check_b:
cmp al, 'b'
jne exit ; exit program if input is not "a" or "b"

mov dl,2 ; print "2" if input is "b"
add dl,30h
mov ah,2
int 21h

exit:
mov ah, 4ch
int 21h

MAIN ENDP
END MAIN