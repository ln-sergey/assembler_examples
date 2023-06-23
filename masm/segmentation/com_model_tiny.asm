; For 8086 processor
.8086

; code + data + stack segments must be <= 64kb (all will be added to DGROUP)
; CS, DS, SS registers links to the only DGROUP with all segments 
; Will be compiled to .com file
.model tiny
; Define the !only code segment with
; name=_TEXT
; alignment=word (data elements are allocated at memory addresses that are multiples of "word"/2-byte size)
; type=PUBLIC (will be unified with other segments of class 'code')
; class='CODE'
.code
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
      ; Take 0 address from stack that links to start of PSP and contains 20h (exit interruption) 
      ret
      ; message will be the link to the first of defined bytes
      ; (db) which can be written in ''
      message db 'Hello, World!$'
END START