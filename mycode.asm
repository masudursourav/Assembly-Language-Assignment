.model small
.stack 100h 
.data
.code
main proc
    mov ah,1
    INT 21h
    mov bl,al
    mov ah,2 
    INT 21h
    mov dl,0dh
    INT 21h
    mov dl,0ah
    INT 21h
    
    add bl,20h
    mov dl,bl
    INT 21h
    
    mov ah,4ch
    INT 21h
    main endp
end main
    