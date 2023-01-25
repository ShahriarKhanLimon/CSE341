.MODEL SMALL
.STACK 100h
.DATA
    BOX  DB  'xxxxxxxxx',0DH,0AH,'$'

 .CODE
   MAIN PROC
     MOV AX, @DATA                
     MOV DS, AX

     LEA DX, BOX               
     MOV AH, 9h                                           

     INT 21H
     INT 21H                      
     INT 21H
     INT 21H
     INT 21H
     INT 21H
     INT 21H
     INT 21H
     INT 21H
     INT 21H
    
        MOV AX, 4C00h
        INT 21h
        
    MAIN ENDP
    END MAIN