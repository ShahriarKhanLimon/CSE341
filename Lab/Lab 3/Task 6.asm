.MODEL SMALL
.STACK 100h
.DATA
     
.CODE
    MAIN PROC
        
    MOV AH,1               
    INT 21H

    CMP AL,'y'             
    JE Display
    JMP Exit
                   
    CMP AL,'Y'  
    JE Display 
    JMP Exit
    
    Display:
    MOV AH, 2         
    MOV DL,AL
    INT 21H
    
    Exit:           
            
    MOV AX, 4C00h
    INT 21h
        
    MAIN ENDP
    END MAIN 