; For 8086 processor
.8086

.model small
.code
   START:
      ; Assign DS to DGROUP (data + stack segments)
      MOV ax, DGROUP
      MOV ds, ax
      ; Print message
      MOV ah, 9h
      MOV dx, offset message
      int 21h
      ; End program: 4C -> AH, 00(return code) -> AL == 4C00 -> AX
      MOV ax, 4C00h
      ; Calling 21 system interruption
      INT 21h
.data
   message db 'Hello, World!$'
.stack 100h

END START