.MODEL SMALL
 
.STACK 100H

.DATA

.CODE
MAIN PROC

    MOV AX,@DATA
    MOV DS,AX
    
    mov bx, 60h
    mov ax, 0h
    
    start:
    cmp bx, 5h
    jl end
    
    add ax, bx
    sub bx, 5h
    
    jmp start
    
    end:
    

    MAIN ENDP
END MAIN