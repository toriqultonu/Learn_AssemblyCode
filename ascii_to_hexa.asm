.model small
 .stack 100h
 .data

 msg1 db 'Enter: $'
 var1 db 9
 chr db 0
 string db 9 DUP (0)
 var2 db 13,10,13,10,'$'
 hex1 db ?    ;FIRST  HEX DIGIT.
 hex2 db '  , $' ;SECOND HEXT DIGIT.

.code
  mov  AX, @data
  mov  DS, AX

  mov  AH, 9
  lea  DX, msg1
  int  21h

  mov  AH, 0Ah
  lea  DX, var1
  int  21h

  mov  AH, 9
  lea  DX, var2
  int  21h

  mov  CL, chr
  mov  ch, 0 ;CLEAR CH TO USE CX AS COUNTER.
  mov  SI, offset string

;ciclo:         
;GET ONE CHARACTER FROM STRING.
  mov  DL, [SI] 
;ISOLATE LOWER 4 BITS IN CHARACTER.
  and  DL, 00001111b
  call convert ;CONVERT DL TO DIGIT OR LETTER.
  mov  hex2, dl ;SAVE CONVERTED CHARACTER TO DISPLAY LATER.
;GET THE SAME CHARACTER FROM STRING.
  mov  DL, [SI] 
;ISOLATE UPPER 4 BITS IN CHARACTER.
  shr  DL, 4 ;SHIFT DL 4 BITS TO THE RIGHT.
  call convert ;CONVERT DL TO DIGIT OR LETTER.
  mov  hex1, dl ;SAVE CONVERTED CHARACTER TO DISPLAY LATER.
;DISPLAY CONVERTED CHARACTER.
  mov  ah, 9
  mov  dx, offset hex1
  int  21h  

  inc  si ;NEXT CHARACTER TO CONVERT.
 ; loop ciclo

  mov AH,4Ch
  int 21h
;--------------------------------------------------------
;CONVERT DL TO HEX CHARACTER.
proc convert       
  cmp DL, 9
  jbe its_a_digit ;JUMP IF ( DL <= 9 ).
;its_a_letter:  IF NO JUMP, STAYS HERE.
  add dl, 55 ;CONVERT TO LETTER.
  jmp finish  
its_a_digit:  
  add dl, 48 ;CONVERT TO DIGIT.
finish:
  ret
endp 