;CODE TO WRITE 0 TO 9 WITH LOOP

.MODEL SMALL
.STACK 100H
.DATA

.CODE
MAIN PROC
        
    MOV CX,10
    MOV DX,48
    
    LABEL1:
    
    MOV AH,2
    INT 21H  
    
    ADD DX,1
               
               
    LOOP LABEL1    
        
    MAIN ENDP

END MAIN