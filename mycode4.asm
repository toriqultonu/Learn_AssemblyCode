;FOURTH PROGRAM FOR ADDING TWO NUMBERS BY USER INPUT

.MODEL SMALL
.STACK 100H
.DATA

.CODE

MAIN PROC
    
    MOV AH,1 
    INT 21H
    
    MOV BL,AL
    
    MOV AH,1
    INT 21H
    
    ADD AL,BL
    SUB AL,48
    MOV DL,AL
    
    MOV AH,2
    INT 21H
    
    MOV AH,4CH
    
    MAIN ENDP

END MAIN
