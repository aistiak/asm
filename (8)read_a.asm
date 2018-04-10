.model small
.stack 100h
.code
main proc 
    
     ;set ds to active display page 
     mov ax,0b800h ; colour active display page 
     mov ds,ax
     mov cx,2000
     mov di,0 ;init di
; fill active display page 
  fill_buf:
     mov [di],1441h ; red a on blue 
     add di,2; go to next word 
     loop fill_buf
 ;dos exit 
     mov ah,4ch
     int 21h
 main endp

end main 