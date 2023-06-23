; For 8086 processor
.8086
; Define segment with
; name=code
; alignment=para (data elements are allocated at memory addresses that are multiples of "para"/"paragraph"/16-byte size)
; bit=USE16 (size of registers and addresses in segement)
; type=PUBLIC (will be unified with other segments of class 'code')
; class='code'
code SEGMENT para USE16 PUBLIC 'code'
   ; Tip for compiler that CS, DS, SS, ES registers assigned to code segment address
   ASSUME CS:code, DS:code, SS:code, ES:code
   ; Define that programm code will be placed at 0x100 offset from segment start
   ; 100h=256byte also means end of PSP (program segment prefix) section
   ; PSP contains links to sys interruptions, PATH, command line args
   ORG 100h
   START:
      ; Write print command (9H) to AH register
      MOV ah, 9h
      ; Address of message should be in CS:DX registers.
      ; CS already defined in ASSUME.
      ; So we need just to write message's offset to DX
      MOV dx, offset message
      ; Calling system interruption
      int 21h
      ; End program
      ret
      ; message will be the link to the first of defined bytes
      ; (db) which can be written in ''
      message db 'Hello, World!$'
code ends
   END START