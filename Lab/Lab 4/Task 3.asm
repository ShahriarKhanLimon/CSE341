.MODEL SMALL
 
.STACK 100H

.DATA

.CODE
MAIN PROC

    mov cx, 5
    
    start:
    mov ah,1
    int 21h
    loop start
    
    mov ah, 2
    mov dx, 0dh
    
    mov cx, 5
    
    printX:
    mov ah, 2
    mov dx, 'X'
    int 21h
    loop printX
    

    MAIN ENDP
END MAIN