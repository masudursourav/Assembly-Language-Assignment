.model small 
.stack 100h
.data
.code
main proc
    mov ah,1
    INT 21h
    cmp al,'y'
    je then
    cmp al,'Y'
    je then 
    jmp end_
then:
    mov bl,al
    mov ah,2
    mov dl,bl
    INT 21h
    jmp end_
end_:
    mov ah,4ch
    INT 21h
    main endp
end main