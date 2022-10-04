.model small
.stack 100h
.data
.code
main proc
    mov ah,1
    mov cl,0
while:
    INT 21h
    cmp al,0dh
    je end_
    inc cl
    jmp while
end_:
    mov ah,2
    mov dl,0dh
    INT 21h
    mov dl,0ah
    INT 21h
    mov dl,cl
    add dl,'0'
    INT 21h
    mov ah,4ch
    INT 21h
    main endp
end main