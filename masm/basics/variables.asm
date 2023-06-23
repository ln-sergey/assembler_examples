.8086
code SEGMENT para USE16 PUBLIC 'code'
   ASSUME CS:code, DS:code, SS:code
   ORG 100h
START:
   int 20h

   ; db, dw, dd, df, dq, dt - define byte/word/double word/...

   ; Allocate w("word"/2 bytes) and initialize it with max value
   num dw 65535
   ; Allocate w("word"/2 bytes) with trash
   undefined_num dw ?
   ; Allocate 3 w("word"/2 bytes) and initialize them with 1, 2, 3 
   ; num links to 1
   nums dw 1, 2, 3
   ; Allocate 3 w("word"/2 bytes) and initialize them with 5
   ; num_5 links to the first value
   nums_5 dw 3 DUP(5)
   ; Allocate 6 b("byte"/1 byte) and initialize them with 'C', 'h', 'a', ...
   ; msg links to 'C'
   msg db 'Chars$'

code ends
end START