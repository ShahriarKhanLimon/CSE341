;.MODEL SMALL
;.STACK 100h
;.DATA
;    msg db "Perform addition. Enter numbers $"
;    a db ?
;    b db ?
;.CODE
;    MAIN PROC
;        MOV AH, 1
;        INT 21h
;        
;        MOV BL, AL
;        
;        MOV AH, 2
;        MOV DL, 0ah
;        INT 21h
;        
;        MOV DL, BL
;        ADD DL, 20h
;        INT 21h
;        
;    
;         MOV AX, 4C00h
;         INT 21h
;        
;    MAIN ENDP
;    END MAIN  

.MODEL SMALL
.STACK 100H
.DATA
    MSG1 DB 0AH,0DH,'THE SUM OF '
    NUM1 DB ?
    MSG2 DB ' AND '
    NUM2 DB ?
    MSG3 DB ' IS '
    RESULT DB ?
    MSG4 DB ' $'
.CODE
MAIN PROC
 
    MOV AX,@DATA
    MOV DS,AX
 
    MOV AH,2
    MOV DL,3FH
    INT 21H
 
    MOV AH,1
    INT 21H
    MOV BL,AL
    MOV NUM1,AL
    INT 21H
    MOV NUM2,AL
 
    ADD BL,AL
    SUB BL,30H
    MOV RESULT,BL
 
    MOV AH,9
    LEA DX,MSG1 
    INT 21H
 
    MOV AH,4CH
    INT 21H
 
    MAIN ENDP
END MAIN