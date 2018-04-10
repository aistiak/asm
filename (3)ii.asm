;(ii)	Read a character, and if it's an uppercase letter, display it.
.MODEL SMALL
.STACK 100H 
.DATA
MSG1 DB 'ENTER THE CHARACTER: $'
NL DB 10,13,'THE OUTPUT RESULT IS: $'
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
    
     LEA DX,NL
    MOV AH,9
    INT 21H
     
    
    CMP BL,'A'
    JNGE EXIT
    CMP BL,'Z'
    JNLE EXIT
    
     
    MOV DL,BL
    MOV AH,2
    INT 21H
    
    EXIT:
    MOV AH,4CH
    INT 21H 
    MAIN ENDP
END MAIN
