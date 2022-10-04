.model small
.stack 100h
.data
STR DB "**********",0dh,0ah,"$"
.code
main proc
    mov ax,@data
    mov ds,ax
    lea dx,STR
    mov ah,9
    mov cx,10
top:
    INT 21h
    loop top  
    mov ah,4ch
    INT 21h
    main endp
end main
    
    