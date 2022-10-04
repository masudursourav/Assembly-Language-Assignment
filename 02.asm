.model small
.stack 100h
.data
MSG DB "Please enter : $"
A DB ?
B DB ?
C DB ?
.code
main proc
    mov ax,@data
    mov ds,ax   
    lea dx,msg
    mov ah,9 
    INT 21h
    mov ah,1
    INT 21h
    mov A,al
    INT 21h
    mov B,al
    INT 21h
    mov C,al
    mov ah,2
    INT 21h
    mov dl,0dh
    INT 21h
    mov dl,0ah
    INT 21h
    mov dl,A
    INT 21h
    mov dl,0dh
    INT 21h
    mov dl,0ah
    INT 21h
    mov dl,B
    INT 21h
    mov dl,0dh
    INT 21h
    mov dl,0ah
    INT 21h
    mov dl,C
    INT 21h
    mov ah,4ch
    main endp
end main