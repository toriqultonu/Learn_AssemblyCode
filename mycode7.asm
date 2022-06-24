;the program is written to print two string in two line

.MODEL SMALL
.STACK 100H
.DATA

msg1 db 'hello$'
msg2 db 'world$'

.CODE

MAIN PROC
        
    MOV AX,@DATA
    MOV DS,AX
    
    LEA DX,msg1
    MOV AH,9
    INT 21H    
    
    MOV DL,10 
    MOV AH,2
    INT 21H
    MOV DL,13
    MOV AH,2
    INT 21H
    
    LEA DX,msg2
    MOV AH,9
    INT 21H
    
    MOV AH,4CH
        
    MAIN ENDP

END MAIN
