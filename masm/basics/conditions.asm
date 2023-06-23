.8086
code SEGMENT para USE16 PUBLIC 'code'
   ASSUME CS:code, DS:code, SS:code
   ORG 100h
START:
   mov ax, 5
   mov bx, 5
   ; Substract bx from ax
   cmp ax, bx
   ; If ZF (zero flag) == 0 then jump to T
   je T ; jne (jump if not equal) 
   ; if (ax != bx)
   ; ...
   T:
   ; else
   ; ...

code ends
end START