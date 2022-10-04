.model small
.stack 100h
.data 
.code
main proc
    mov ah,1
    INT 21h
    cmp al,'A'
    jl end_m
    cmp al,'Z'
    jg end_m
    mov bl,al
    mov ah,2
    mov dl,0dh
    INT 21h
    mov dl,0ah
    INT 21h
    mov dl,bl
    INT 21h
end_m:
    mov ah,4ch
    INT 21h
    main endp
end main