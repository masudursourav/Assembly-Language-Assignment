.model small 
.stack 100h
.data
MSG1 DB "Input the Hex code : $"
MSG2 DB "Decimal is :1$"
A DB ?
.code 
main proc
    mov ax,@data
    mov ds,ax
    lea dx,MSG1
    mov ah,9
    INT 21h
    mov ah,1
    INT 21h
    mov A,al
    sub A,11h
    mov ah,2
    mov dl,0dh
    INT 21h
    mov dl,0ah
    INT 21h
    lea dx,MSG2
    mov ah,9
    INT 21h
    mov ah,2
    mov dl,A
    INT 21h
    mov ah,4ch
    main endp
end main