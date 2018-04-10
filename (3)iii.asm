;(i)	Read a character. If
; it's "y" or "Y", display it; otherwise terminate the program.
.MODEL SMALL
.STACK 100H 
.DATA
MSG1 DB 'ENTER THE CHARACTER: $'
MSG2 DB 0AH,0DH,'THE OUTPUT RESULT IS: $'
.CODE
MAIN PROC 
    
    MOV AX,@DATA
    MOV DS,AX
    
    LEA DX,MSG1
    MOV AH,9
    INT 21H
    
    MOV AH,1
    INT 21H 
    
    MOV BL,AL
            
    LEA DX,MSG2
    MOV AH,9
    INT 21H
    
    CMP BL,'y'
    JE THEN
    CMP BL,'Y'
    JE THEN
    
    JMP EXIT
    
    
    THEN: 
    MOV AH,2
     
    MOV DL,BL
    MOV AH,2
    INT 21H
    JMP EXIT
    
    EXIT:
    MOV AH,4CH
    INT 21H 
    MAIN ENDP
END MAIN 
