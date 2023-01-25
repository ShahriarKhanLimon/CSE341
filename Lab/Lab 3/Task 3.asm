.MODEL SMALL
.STACK 100h
.DATA

 a dw -5
     
.CODE
    MAIN PROC
        
    mov ax, @data
    mov ds, ax
        
    mov ax, a
    
    cmp ax, 0
    jg greater
    jl less
    je equal 
    
    greater:
    mov bx, 1
    
    mov ah, 2
    mov dx, bx
    add dx, 48
    int 21h
    jmp end_
    
    less:
    mov bx, -1
    
    mov ah, 2
    mov dx, bx
    add dx, 48
    int 21h
    jmp end_
    
    equal:
    mov bx, 0
    
    mov ah, 2
    mov dx, bx
    add dx, 48
    int 21h

    end_:
            
   
        MOV AX, 4C00h
        INT 21h
        
    MAIN ENDP
    END MAIN 