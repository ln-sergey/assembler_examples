.8086
code SEGMENT para USE16 PUBLIC 'code'
   ASSUME CS:code, DS:code, SS:code
   ORG 100h
START:
   ; Size of value should be the same as register size
   ; MOV from one segment reg to other isn't allowded
   ; MOV immediate value to segment reg isn't allowded
   ; MOV from one memory address to other isn't allowded

   ; Immediate addressing 
   mov ax, 2 ; 0002h -> AX
   
   ; Register addressing 
   mov bx, ax ; 0002h -> BX
   
   ; Memory addressing 
   mov ax, ds:0001h ; ????h -> ax
   mov ax, num ; ds:num (0003h) -> ax
   mov ax, byte ptr num ; byte ptr ds:num (03h) -> ax
   
   mov word ptr num, ax ; ax -> word ptr ds:num (03h)

   mov ax, offset num ; ds:offset num -> ax

   mov ax, [bp] ; ss:bp -> ax
   mov ax, [bp + 2] ; ss:bp + 2 byte -> ax


   int 20h

   num dw 0003h

code ends
end START