;first program to run hello world

.MODEL SMALL
.STACK 100H
.DATA 

.CODE
MAIN PROC  
    
    MOV AH,1  
    INT 21H
    MOV DL,AL 
    MOV AH,2
    INT 21H
   
    
    MAIN ENDP
END MAIN