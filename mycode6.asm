;this is a program to write string input and output

.MODEL SMALL
.STACK 100H

.DATA

 var1 db '1'
 var2 db ?
 var3 db '1235$'
 
.CODE 

MAIN PROC
        
    MOV AX,@DATA
    MOV DS,AX
    
    MOV DL,var1
    MOV AH,2
    INT 21H
    
    MOV var2,BL
    MOV DL,var3
    MOV AH,2
    INT 21H
    
    ;MOV DX,OFFSET var3     
    LEA DX,var3
    MOV AH,9
    INT 21H
        
    MAIN ENDP

END MAIN