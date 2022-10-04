.model small 
.stack 100h
.data
.code
main proc
    mov ah,1
    INT 21h
    mov bl,al
    INT 21h
    mov cl,al
    cmp bl,cl
    jle next
    mov cl,bl
next:
    mov ah,2
    mov dl,cl
    INT 21h
    mov ah,4ch
    INT 21h
    main endp
end main