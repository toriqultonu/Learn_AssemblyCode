;COMPIARING TWO NUMBERS

.MODEL SMALL
.STACK 100H

.DATA
   
   msg1 DB 'Number is equal$'
   msg2 DB 'Number is not equal$'
.CODE

MAIN PROC
            
    MOV AX,@DATA
    MOV DS,AX
            
    MOV BL,'A' 
   
    MOV AH,1
    INT 21H
         
    MOV DL,10
    MOV AH,2
    INT 21H
    MOV DL,13
    MOV AH,2
    INT 21H
         
    CMP AL,BL
    
    JE L1  
    JNE L2
    
    MOV AH,4CH
    
    L1:
    MOV DX, OFFSET msg1
    MOV AH,9
    INT 21H    
    
    L2:
    MOV DX, OFFSET msg2
    MOV AH,9
    INT 21H
    
    MAIN ENDP

END MAIN