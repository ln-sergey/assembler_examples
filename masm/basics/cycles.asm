.8086
code SEGMENT para USE16 PUBLIC 'code'
   ASSUME CS:code, DS:code, SS:code
   ORG 100h
START:
   ; Cycles count = 5
   mov cx, len
   ; 2 - write symbol to command line
   mov ah, 2
   ; SI -> 'H'
   mov si, offset msg
   ; Index of printing symbol
   mov bx, 0
   L:
      ; DL should contain address of current symbol
      mov dl, [si + bx]
      ; Increment BX
      inc bx
      ; Write symbol to command line
      int 21h
      ; Decrement cycles count
      ;  dec cx
      ; If Cycles count > 0 jump to loop start
      ;  cmp cx, 0
      ;  jne L
      loop L
   
   ; Exit program
   int 20h

   ; Program data
   msg db 'Hello'
   ; len -> current address - msg/'H'/start of string
   len eq $ - msg

code ends
end START