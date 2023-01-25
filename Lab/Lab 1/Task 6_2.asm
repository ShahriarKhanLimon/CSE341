.MODEL SMALL
.STACK 100h
.DATA 
    ;declaring and assigning value in the variable
    a dw 18
     
.CODE
    MAIN PROC
        
        mov ax, @data
        mov ds, ax
        
        mov ax, a
        
        inc ax
        neg ax
        
        mov a, ax
        
    
        mov ah, 2
        mov dx, a
        ;add dx, 48
        int 21h
            
   
        MOV AX, 4C00h
        INT 21h
        
    MAIN ENDP
    END MAIN 