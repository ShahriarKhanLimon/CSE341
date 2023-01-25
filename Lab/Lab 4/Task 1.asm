.MODEL SMALL
.STACK 100h
.DATA
     
.CODE
    MAIN PROC
        
     MOV CX,80
     MOV AH,2
     MOV DL,'*'
    
     TOP:
     INT 21H
     LOOP TOP         
            
     MOV AX, 4C00h
     INT 21h
        
    MAIN ENDP
    END MAIN 