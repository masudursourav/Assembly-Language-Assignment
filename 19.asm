.model small
.stack 100h
.data
.code
main proc
    xor cx,cx
    mov ah,1 
    INT 21h
while:
    cmp al,0dh
    je end_while
    push ax
    INC cx
    INT 21h
    jmp while
end_while:
    mov ah,2
    mov dl,0dh
    INT 21h
    mov dl,0ah
    INT 21h
    JCXZ exit
top:
    POP DX
    INT 21h
    loop top
exit:
    mov ah,4ch
    INT 21h
    main endp
end main