.model small
.stack 100h
.data
.code
main proc
    mov ah,1
    INT 21h
    cmp al,0
    jnl end_if
    neg al
end_if:
    mov ah,2
    mov dl,al
    INT 21h
    mov ah,4ch
    INT 21h
    main endp
end main