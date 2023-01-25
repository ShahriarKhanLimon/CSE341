.MODEL SMALL
.STACK 100h
.DATA
    msg1 db "ENTER A HEX DIGIT: $"
    msg2 db "IN DECIMAL IT IS $"
     
.CODE
    MAIN PROC
        MOV AX, @DATA
        MOV DS, AX 
        
        
        
            
        MOV AH, 9
        LEA DX, msg1
        INT 21h
        
        MOV AH, 1
        INT 21h
        MOV BL, AL
        
        MOV AH, 2
        MOV DL, 0Dh
        INT 21h
        MOV DL, 0Ah
        INT 21h
            
        MOV AH, 9
        LEA DX, msg2
        INT 21h
        
        MOV AH, 2
        MOV DL, 49
        INT 21h
        
        MOV DL, BL
        SUB DL, 17
        INT 21h
        
        
    
        MOV AX, 4C00h
        INT 21h
        
    MAIN ENDP
    END MAIN