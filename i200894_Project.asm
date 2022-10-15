Activate_Graphics MACRO videomode
    mov ah,0
    mov al,videomode
    int 10h
ENDM

.model small
.stack 100h
.data
.code
MAIN PROC
    Activate_Graphics 12
EXIT:
    mov ah,4ch
    int 21h
MAIN ENDP
END MAIN