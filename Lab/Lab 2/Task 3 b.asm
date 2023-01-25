.MODEL SMALL
.STACK 100h
.DATA
    msg db "Perform addition. Enter numbers $"
    a db ?
    b db ?
.CODE
    MAIN PROC
        MOV AH, 1
        INT 21h
        
        MOV BL, AL
        
        
        MOV DL, BL
        ADD DL, 20h
        INT 21h
        
    
        MOV AX, 4C00h
        INT 21h
        
    MAIN ENDP
    END MAIN