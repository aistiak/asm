.MODEL 
.STACK
.DATA

CR EQU  0DH 
LF EQU  0AH   
MSG1 DB "ENTER A LETTER TO CONVERT : $"
MSG2 DB CR,LF,"IN UPPER CASE IT IS : "
CHAR DB ?,'$'

.CODE
MAIN PROC
  
  
    ; INIT DS
    MOV AX,@DATA
    MOV DS,AX
    ;PROMPT USER      
    LEA DX,MSG1
    MOV AH,9
    INT 21H    
    ;INPUT CHARECTER
    MOV AH,1
    INT 21H
    SUB AL,20H
    MOV CHAR,AL
    ;DISPLY RESULT
    LEA DX,MSG2
    MOV AH,9   
    INT 21H 
    
    ;RETURN TO DOS
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
END MAIN

