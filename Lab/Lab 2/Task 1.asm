.MODEL SMALL
.STACK 100h
.DATA
    msg db "Please insert a character: $"
     
.CODE
    MAIN PROC
        MOV AX, @DATA
        MOV DS, AX
        ;mov es, ax
        
        MOV AH, 9
        LEA DX, msg
        INT 21h
        
        MOV AH, 2
        MOV DL, 0Dh
        INT 21h
        MOV DL, 0Ah
        INT 21h
   
        
        MOV AH, 1
        INT 21h
        MOV BL, AL
        
        
        MOV AH, 2
        MOV DL, 0Dh
        INT 21h
        MOV DL, 0Ah
        INT 21h
        
        
        MOV DL, BL
        INT 21h
        
        
    
        MOV AX, 4C00h
        INT 21h
        
    MAIN ENDP
    END MAIN