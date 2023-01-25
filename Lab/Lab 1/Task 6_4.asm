.MODEL SMALL
.STACK 100h
.DATA 
    a dw 2
    b dw 5
     
.CODE
    MAIN PROC
        
        mov ax, @data
        mov ds, ax
        
        mov ax, a
        mov bx, b
        
        dec ax
        sub bx, ax
        mov ax, bx
        
        mov a, ax
        
    
        mov ah, 2
        mov dx, a
        add dx, 48
        int 21h
            
   
        MOV AX, 4C00h
        INT 21h
        
    MAIN ENDP
    END MAIN 