.MODEL SMALL
.STACK 100h
.DATA 
    a dw 3
    b dw 2
     
.CODE
    MAIN PROC
        
        mov ax, @data
        mov ds, ax
        
        mov ax, a
        mov bx, b
        
        mul bx
        
        mov a, ax
        
    
        mov ah, 2
        mov dx, a
        add dx, 48
        int 21h
            
   
        MOV AX, 4C00h
        INT 21h
        
    MAIN ENDP
    END MAIN 