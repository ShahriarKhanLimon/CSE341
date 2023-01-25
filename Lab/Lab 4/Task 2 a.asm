.MODEL SMALL
 
.STACK 100H

.DATA

.CODE
MAIN PROC

    MOV AX,@DATA
    MOV DS,AX
    
    mov bx, 1h
    mov ax, 0h
    
    start:
    cmp bx, 94h
    jg end
    
    add ax, bx
    add bx, 3h
    
    jmp start
    
    end:
    

    MAIN ENDP
END MAIN