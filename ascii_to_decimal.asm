.model small
.stack 100h
.data
Input db 'enter character: $' 
Output db 'Decimal value : $' 
.code 
main proc 
 mov ax, @data
 mov ds, ax
 
 mov ah,9
 lea dx, input 
 int 21h 
 
 mov ah,1
 int 21h 
 
 
 MOV BX, 10 
 MOV AH, 0 
 mov dx,0
 mov cx,0
 
 again:
 div bx 
 push dx 
 mov dx,0 
 inc cx
 cmp ax,0
 jne again 
 
 mov ah,2
 mov dl,10
 int 21h
 mov dl,13
 int 21h
 
 mov ah,9
 lea dx,Output
 int 21h
 
 display:
 pop dx 
 add dx,48
 mov ah,2
 int 21h 
 loop display
 
 
 
 exit:
 mov ah,4ch
 int 21h 
 main endp
end main