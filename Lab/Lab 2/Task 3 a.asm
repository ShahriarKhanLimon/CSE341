.MODEL SMALL
.STACK 100h
.DATA
    msg db "Perform addition. Enter numbers $"
    a db ?
    b db ?
.CODE
    MAIN PROC
        
         MOV AH, 1                   
         INT 21H
     
         MOV BL, AL                   
     
         MOV AH, 2  
         MOV DL, BL
         INT 21H
        
    
         MOV AX, 4C00h
         INT 21h
        
    MAIN ENDP
    END MAIN