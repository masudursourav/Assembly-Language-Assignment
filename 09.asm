.model small 
.stack 100h
.data
.code
main proc
    mov ah,1
    INT 21h
    cmp al,'0'
    jl negative
    je zero
    jg positive
    
negative: 
    mov bl,'1'
    mov ah,2
    mov dl,'-'
    INT 21h
    jmp end_d
zero:
    mov bl,'0'
    jmp end_d
positive:
    mov bl,'1'
    jmp end_d
end_d:
    mov ah,2
    mov dl,0dh
    INT 21h
    mov dl,0ah
    INT 21h
    mov dl,bl
    INT 21h
    mov ah,4ch
    INT 21h
    main endp
end main
         