;(i)If AL contains 1 or 3, display "o" , if AL contains 2 or 4, display "e".
.MODEL SMALL
.STACK 100H 
.DATA

MSG1 DB 'ENTER THE VALUE: $'
NL DB 0AH,0DH,'THE OUTPUT VALUE IS: $'
A DB 0
.CODE
MAIN PROC
         MOV AX,@DATA
         MOV DS,AX
         LEA DX,MSG1
         MOV AH,9
         INT 21H
         
         MOV AH,1
         INT 21H
         SUB AL,48 
         MOV A,AL 
         LEA DX,NL
         MOV AH,9
         INT 21H    
         CMP A,1
         JE ODD
         CMP A,3
         JE ODD
         
                 
         CMP A,2
         JE EVEN
         CMP A,4
         JE EVEN 
         
         JMP EXIT
               
       
         ODD:
         MOV DL,'o'
         JMP DISPLAY
         
        EVEN:
         MOV DL,'e'
        
        DISPLAY:
        MOV AH,2
         INT 21H
         
         
         EXIT:
         MOV AH,4CH
         INT 21H
         MAIN ENDP
END MAIN
 
