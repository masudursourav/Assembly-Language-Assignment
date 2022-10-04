.model small
.stack 100h
.data
.code
main proc
    mov cx,80
    mov ah,2
    mov dl,'*'
top:
    INT 21h
    loop top
    
    mov ah,4ch
    INT 21h
    main endp
end main