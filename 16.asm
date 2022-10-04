.model small
.stack 100h
.data
A DB ?
B DB ?
.code 
main proc   
    mov ax,@data
    mov ds,ax
    mov ah,1
    INT 21h
    mov A,al
    INT 21h
    mov B,al
    cmp al,A
    jg end_
    mov bl,A
    mov B,bl
    mov A,al
end_:
    mov ah,2
    mov dl,A
    INT 21h
    mov dl,B
    INT 21h
    mov ah,4ch
    INT 21h
    main endp
end main
    
