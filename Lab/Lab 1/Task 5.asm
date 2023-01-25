.MODEL SMALL                                             .MODEL SMALL
.STACK 100h
.DATA  
    a DB ?
    b DB ?
.CODE
    MAIN PROC
        
    mov ah, 1
    int 21h
    
    mov a, al
    sub a, 48
    
    int 21h    
    mov b, al
    sub b, 48
    
    mov ch, a
    add ch, b
    ;add ch, 48
    
    
    mov bh, ch
    sub bh, b
    ;add bh, 48
    
    sub ch, bh
    ;add ch, 48
    
    mov ah, 2
    mov dl, 0ah
    int 21h
    mov dl, 0dh
    int 21h
    
    mov ah, 2
    mov dl, ch
    add dl, 48
    int 21h
    
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