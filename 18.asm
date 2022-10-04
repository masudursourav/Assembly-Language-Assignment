.model small 
.stack 100h
.data
MSG1 DB "Please enter hex code (1-9) or (A-F) : $"
MSG2 DB "The decimal is : $",0ah,0dh,"$"
MSG3 DB "The decimal is : 1$"
MSG4 DB "This is illigal char try again",0ah,0dh,"$"
MSG5 DB "Wanna Try again press y or Y : $"
.code
main proc
    mov ax,@data
    mov ds,ax
    mov cx,0
top1:
    lea dx,MSG1
    mov ah,9
    INT 21h
    jmp top2
top2: 
    mov ah,1
    INT 21h
    mov bl,al
    cmp bl,'0'
    jl char
    cmp bl,'9'
    jg char
    jmp cal1
char:
    cmp bl,'A'
    jl ilgal
    cmp bl,'F'
    jg ilgal
    jmp cal2
cal1:
    mov ah,2
    mov dl,0dh
    INT 21h
    mov dl,0ah
    INT 21h
    lea dx,MSG2
    mov ah,9
    INT 21h
    mov ah,2
    mov dl,bl
    INT 21h
    jmp try 
    
cal2: 
    mov ah,2
    mov dl,0dh
    INT 21h
    mov dl,0ah
    INT 21h 
    lea dx,MSG3
    mov ah,9
    INT 21h
    mov ah,2
    mov dl,bl
    sub dl,11h
    INT 21h
    jmp try 
try:
   mov ah,2
   mov dl,0dh
   INT 21h
   mov dl,0ah
   INT 21h
   lea dx,MSG5
   mov ah,9
   INT 21h
   mov ah,1
   INT 21h
   cmp al,'y'
   je top1
   cmp al,'Y'
   mov ah,2
   mov dl,0dh
   INT 21h
   mov dl,0ah
   INT 21h
   je top1
   jmp end_
ilgal:
   mov ah,2
   mov dl,0dh
   INT 21h
   mov dl,0ah
   INT 21h
   lea dx,MSG4
   mov ah,9         
   INT 21h
   INC cx
   cmp cx,3
   je end_
   jmp try 
end_:
   mov ah,4ch
   INT 21h
   main endp
end main
    
        