;PROGRAM TO PRINT A TO Z 

.MODEL SMALL 
.STACK 100H
.DATA
.CODE

MAIN PROC
          
    MOV CX,26
    MOV BL,65
    
    LOOP1:
    MOV DL,BL
    
    MOV AH,2
    INT 21H
    
    MOV DL,10
    MOV AH,2
    INT 21H 
    
    MOV DL,13
    MOV AH,2
    INT 21H
    
    
    ADD BL,1
    
    LOOP LOOP1
    
          
    MAIN ENDP

END MAIN
