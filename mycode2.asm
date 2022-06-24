;second code for addition 


.MODEL SMALL
.STACK 100H
.DATA

.CODE

MAIN PROC
    
    MOV BL,2                 
    MOV CL,3
    
    ADD BL,CL 
    ADD BL,48
    
    MOV DL,BL 
    MOV AH,2
    INT 21H
    
    MAIN ENDP

END MAIN