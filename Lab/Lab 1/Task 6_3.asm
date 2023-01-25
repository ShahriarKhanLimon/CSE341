.MODEL SMALL
.STACK 100h
.DATA 
    ;declaring and assigning value in the variable
    a dw 2
    b dw 3
    c dw 0
     
.CODE
    MAIN PROC
        
        mov ax, @data
        mov ds, ax
        
        mov ax, a
        mov bx, b
        mov cx, c
        
        inc bx
        mov cx, a
        add cx, bx
        
        
        mov c, cx
        
    
        mov ah, 2
        mov dx, c
        add dx, 48
        int 21h
            
   
        MOV AX, 4C00h
        INT 21h
        
    MAIN ENDP
    END MAIN 