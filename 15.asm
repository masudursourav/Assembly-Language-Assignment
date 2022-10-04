.model small
.stack 100h
.data
.code
main proc
    mov ah,1
while:
    INT 21h
    cmp al,' '
    je end_
    jmp while
end_:
    mov ah,4ch
    INT 21h
    main endp
end main