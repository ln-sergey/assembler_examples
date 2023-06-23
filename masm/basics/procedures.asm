.8086
code SEGMENT para USE16 PUBLIC 'code'
   ASSUME CS:code, DS:code, SS:code
   ORG 100h
START:
   mov ax, 10
   ; Save AX state
   push ax
   ; Push sum args to stack
   mov ax, 5
   mov bx, 3
   push bx
   push ax
   ; mov cx, N
   ; push cx
   ; jmp sum ; cs:sum
   ; N:
   call sum
   ; Move sum result to CX
   mov cx, ax
   ; Restore AX value
   pop ax
   ; Exit programm
   int 20h


; Function to sum two numbers
sum proc
   ; Add bp (Base pointer) to stack
   push bp
   ; Move bp to top of stack
   mov bp, sp
   ; We can store local variables on stack
   sub sp, 4
   mov [bp - 2], ax
   mov [bp - 4], bx
   ; bp, sp -> old bp, bp+2 -> ret addr, bp+4 -> 1st arg
   ; Get 1st operand from stack 
   mov ax, [bp + 4]
   ; Get 2nd operand from stack 
   mov bx, [bp + 6]
   ; Sum operands
   add ax, bx
   ; Clear local variables from stack
   move sp, bp
   ; Return bp to original state: pop top of stack(old bp) to bp
   pop bp
   ; Return from function and delete 4 bytes(args) from stack
   ret 4
sum endp

code ends
end START