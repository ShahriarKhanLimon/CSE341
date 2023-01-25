.MODEL SMALL
.STACK 100h
.DATA
     
.CODE
    MAIN PROC
    
    mov al, 2

    cmp al, 1
    je odd
    
    cmp al, 2
    je even 
    
    cmp al, 3
    je odd 
    
    cmp al, 4
    je even
    
    odd: 
    mov ah, 2
    mov dl, 'o'
    int 21h
    
    jmp end_ 
    
    even: 
    mov ah, 2
    mov dl, 'e'
    int 21h
    
    end_:
            
   
        MOV AX, 4C00h
        INT 21h
        
    MAIN ENDP
    END MAIN 