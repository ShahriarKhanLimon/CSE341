.MODEL SMALL                                             .MODEL SMALL
.STACK 100h
.DATA  
    a db 4
    b db 5
.CODE
    MAIN PROC
     
    mov ax, @data
    mov ds, ax
        
    mov bl, a
    mov dl, b 
    add dl, bl
    add dl, 48
    mov ah, 2
    int 21h
            
   
        MOV AX, 4C00h
        INT 21h
        
    MAIN ENDP
    END MAIN