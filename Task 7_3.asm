.MODEL SMALL
.STACK 100h
.DATA 
    x dw 3
    y dw 6
    z dw 2
     
.CODE
    MAIN PROC
        
        mov ax, @data
        mov ds, ax
        
        mov ax, x
        mov bx, y
                
        mul bx
        
        mov bx, z
        div bx
        
        mov x, ax
        
    
        mov ah, 2
        mov dx, x
        add dx, 48
        int 21h
            
   
        MOV AX, 4C00h
        INT 21h
        
    MAIN ENDP
    END MAIN 