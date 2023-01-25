                                             .MODEL SMALL
.STACK 100h
.DATA
.CODE
    MAIN PROC
        MOV AX, @DATA
        MOV BX, AX
            
   
        MOV AX, 4C00h
        INT 21h
        
    MAIN ENDP
    END MAIN


