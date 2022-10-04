.model small
.stack 100h
.data
MSG1 DB "Enter 1,2,3 or 4 : $"
.code
main proc 
    mov ax,@data
    mov ds,ax
    lea dx,MSG1
    mov ah,9
    INT 21h
    mov ah,1
    INT 21H
    cmp al,'1'
    je odd
    cmp al,'2'
    je even
    cmp al,'3'
    je odd
    cmp al,'4'
    je even
odd:
    mov ah,2
    mov dl,0dh
    INT 21h
    mov dl,0ah
    INT 21h 
    mov dl,'O'
    INT 21h
    jmp end_p
even:
    mov ah,2
    mov dl,0dh
    INT 21h
    mov dl,0ah
    INT 21h 
    mov dl,'E'
    INT 21h
    jmp end_p
    
end_p:
    mov ah,4ch
    INT 21h
    main endp
end main