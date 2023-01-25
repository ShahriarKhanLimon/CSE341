.MODEL SMALL
.STACK 100h
.DATA
     
.CODE
    MAIN PROC
        
    MOV AX,@DATA
    MOV DS,AX
 
    MOV AH,1
    INT 21H
    MOV BL,AL
 
    INT 21H
    MOV CL,AL
 
    CMP BL,CL
    JNLE DISPLAY
 
    MOV AH,2
    MOV DL,BL
    INT 21H
    JMP END_
     
    DISPLAY:
        MOV AH,2
        MOV DL,CL
        INT 21H
    END_:
            
   
        MOV AX, 4C00h
        INT 21h
        
    MAIN ENDP
    END MAIN 