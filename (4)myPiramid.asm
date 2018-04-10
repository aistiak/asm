.MODEL SMALL
.STACK 10H
.DATA 

VAR1 DB ' ' 
VAR2 DB ' '
VAR3 DB ' '   
VAR4 DB ' '
NL  db 0DH,0AH,"$"
.CODE

MAIN PROC 
            
     
    ; MOV CX,5
    
     MOV VAR1,1  
     MOV VAR4,5
     L1:  
          
          MOV BL,VAR4
          MOV VAR2,BL
         
          
         
         
         
      L2:
             
           MOV AH,2
           MOV DL,' '
           INT 21H
                     
           DEC VAR2          
           CMP VAR2,0
           JZ LEEP  
      
      LOOP L2     
      
           LEEP:
           
           
           MOV BL,VAR1
           MOV VAR3,BL 
     
      L3:
                     
                     
             ;PRINT STAR       
             MOV AH,2
             MOV DL,'*'
             INT 21H 
             
             MOV DL,' '
             INT 21H
             
             DEC VAR3
             
             
             CMP VAR3,0 
             JZ LEEP1   
             
             
      
      LOOP L3
             LEEP1:
             
             ;NEW LINE 
             MOV DL,0AH
             INT 21H
             MOV DL,0DH
             INT 21H
     
     
             CMP VAR1,5
             JZ LEEP2  
             
             
             ADD VAR1,2;INC VAR1; 
             SUB VAR4,2;DEC VAR4;
                     
                     
     LOOP L1
                     
                     
             LEEP2:         
        
    
    MAIN ENDP
END MAIN