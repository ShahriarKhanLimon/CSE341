.MODEL SMALL
.STACK 100h
.DATA
    msg db "Perform addition. Enter numbers $"
    a db ?
    b db ?
.CODE
    MAIN PROC
        MOV AX, @DATA
        MOV DS, AX
        ;mov es, ax
        
        MOV AH, 9
        LEA DX, msg
        INT 21h
        
        MOV AH, 2
        MOV DL, 0Dh
        INT 21h
        MOV DL, 0Ah
        INT 21h
   
        
        MOV ah, 1
        INT 21h
        
        
        mov a, al
        sub a, 48
        
        int 21h    
        mov b, al
        sub b, 48
        
        mov bh, a
        add bh, b
        
        
        mov ah, 2
        mov dl, 0ah
        int 21h
        mov dl, 0dh
        int 21h
        
        mov ah, 2
        mov dl, bh
        add dl, 48
        int 21h
        
    
        MOV AX, 4C00h
        INT 21h
        
    MAIN ENDP
    END MAIN