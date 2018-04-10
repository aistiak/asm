; LAB2 FLAG STATUS 
.data
.code

main proc
    
    
    mov ax,4000h
    add ax,ax
    sub ax,0ffffh
    neg ax
    inc ax
    mov ah,4ch 
    
    main endp

end main
