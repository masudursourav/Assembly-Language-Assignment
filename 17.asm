.model small
.stack 100h
.data
.code
main proc
    mov bl,80h
    mov cx,0 
    mov ah,2
display:
    mov dl,bl
    INT 21h
    INC bl
    cmp bl,0FFh
    je end_
    INC cx
    cmp cx,10
    je newline
    jmp display
newline:
    mov cx,0
    mov dl,0dh
    INT 21h
    mov dl,0ah
    INT 21h
    jmp display
end_:
    mov ah,4ch
    INT 21h
    main endp
end main
    