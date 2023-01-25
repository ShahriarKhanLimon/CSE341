.MODEL SMALL
.STACK 100h
.DATA 
    ;declaring and assigning value in the variable
    a dw 18
    b dw 22
     
.CODE
    MAIN PROC
        
        mov ax, @data
        mov ds, ax
        
        ;mov ax, a
        mov bx, b
        
        sub bx, a
        
        mov a, bx
        
    
        mov ah, 2
        mov dx, a
        add dx, 48
        int 21h
            
   
        MOV AX, 4C00h
        INT 21h
        
    MAIN ENDP
    END MAIN 