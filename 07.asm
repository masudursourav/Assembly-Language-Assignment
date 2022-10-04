.model small
.stack 100h
.data
.code
main proc
    mov ah,1
    INT 21h
    mov bl,al
    INT 21h
    cmp bl,al
    jl display
    mov bl,al
display:
    mov ah,2
    mov dl,bl
    INT 21h
    mov ah,4ch
    INT 21h
    main endp
end main