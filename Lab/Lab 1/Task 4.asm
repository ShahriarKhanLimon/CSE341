.MODEL SMALL                                             .MODEL SMALL
.STACK 100h
.DATA  
    a db 45
    b db 50
.CODE
    MAIN PROC
     
    mov ax, @data
    mov ds, ax
        
    mov bl, b
    mov dl, a 
    sub dl, bl
    ;add dl, 48
    mov ah, 2
    int 21h
            
   
        MOV AX, 4C00h
        INT 21h
        
    MAIN ENDP
    END MAIN   
    
    ; when I subtract larger number from the smaller one,  
    ; it shows some ascii values but not the negative number.