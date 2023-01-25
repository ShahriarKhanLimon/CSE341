.MODEL SMALL
.STACK 100h
.DATA
     
.CODE
    MAIN PROC
        
    MOV AH,1               
    INT 21H

    CMP AL,'A'             
    JL ELSE
                   
    CMP AL,'Z'  
    JG ELSE 
   
    
    MOV AH, 2         
    MOV DL,AL
    INT 21H         
       
    ELSE:   
            
    MOV AX, 4C00h
    INT 21h
        
    MAIN ENDP
    END MAIN 