.MODEL SMALL
.STACK 100h
.DATA
    MSG db "Enter Three Initial: $"
    STR1 DB '',0AH,0DH
    FIRST DB ?
    STR2 DB '',0AH,0DH
    SECOND DB ?
    STR3 DB '',0AH,0DH
    THIRD DB ?
    STR4 DB '$'
     
.CODE
    MAIN PROC
        MOV AX, @DATA
        MOV DS, AX 
            
        MOV AH, 9
        LEA DX, MSG
        INT 21h

        MOV AH,1
        INT 21H
        MOV FIRST,AL
        INT 21H
        MOV SECOND,AL
        INT 21H
        MOV THIRD,AL
     
        MOV AH,9
        LEA DX,STR1
        INT 21H
     
        MOV AH,4CH
        INT 21H
        
    
        MOV AX, 4C00h
        INT 21h
        
    MAIN ENDP
    END MAIN


