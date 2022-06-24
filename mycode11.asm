; CODE TO CREATE ARRAY AND PRINT THE ARRAY

.MODEL SMALL
.STACK 100H
.DATA

arr1 DB 'a','b','c','d','e'
arr2 DB 10 DUP('A')

.CODE

MAIN PROC
    
    MOV AX,@DATA
    MOV DS,AX  
    
    MOV CX,10
   
    MOV SI, OFFSET arr2   
    
    L1:
    
    MOV DX,[SI]
    MOV AH,2
    INT 21H           
    INC SI   
         
    LOOP L1  
    MAIN ENDP

END MAIN