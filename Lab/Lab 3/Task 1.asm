.MODEL SMALL
.STACK 100h
.DATA 
    ;declaring and assigning value in the variable
    a dw -8
     
.CODE
    MAIN PROC
        
        mov ax, @data
        mov ds, ax
        
        mov ax, a
        
        cmp ax, 0
        jnl end_if
        
        
        mov ah, 2
        mov dx, 5h
        add dx, 48
        int 21h
        
        end_if:
;    
;        mov ah, 2
;        mov dx, ax
;        add dx, 48
;        int 21h
            
   
        MOV AX, 4C00h
        INT 21h
        
    MAIN ENDP
    END MAIN 