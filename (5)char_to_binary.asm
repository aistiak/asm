
.data

.code


proc main 
    
    
  ; print 'type a charecter : '                    
mov ah ,1 
int 21h
mov bl,al

;gotoxy 0,1

;print 'the ascii charecter is :'

mov bh ,0
mov cx ,8
mov ah ,2

l1:

 shl bl,1
 jc l2
 mov dl, '0'
 int 21h
 jmp l3
;gotoxy 0,2
l2:
 mov dl,'1'
 int 21h
 inc bh
l3:
 loop l1
 
mov ah,4ch
int 21h      
    
endp main  

end main

