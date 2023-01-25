.MODEL SMALL                                             .MODEL SMALL
.STACK 100h
.DATA
.CODE
    MAIN PROC
     
    MOV AX, @DATA
    MOV DS, AX
        
    MOV AX, 09
    MOV BX, 07 
    MOV BH, AL
    MOV AL, BL
    MOV BL, BH
    MOV BH, 00h
            
   
        MOV AX, 4C00h
        INT 21h
        
    MAIN ENDP
    END MAIN


