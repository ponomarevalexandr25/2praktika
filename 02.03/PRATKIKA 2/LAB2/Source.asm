.686
.model flat,stdcall
.stack 100h
.data
ms dw 016E6h, 0D45Bh, 0C9C9h
.code
ExitProcess PROTO STDCALL :DWORD
Start:
xor eax,eax
xor ebx,ebx
xor ecx,ecx
xor edx,edx
;task1
mov cx,3
mov bx,0
lp:
mov ax, ms[bx]
add ah,3 
mov ms[bx], ax
inc bx
inc bx
loop lp
;task2
xor ebx,ebx
mov bx,ms[0] ;x
xor ecx,ecx
mov cx,ms[2] ; y
xor edx,edx
mov dx,ms[4]
sub bx,cx
add cx,dx
xor ebx,ebx
and cx, 000011001000100b
cmp cx, 0
JE ElsePart
mov bx,cx
and bx, 00000010100000000b
JMP EndOfIf
ElsePart:
mov bx,cx
imul bx,2
EndOfIf:
;task3
xor ecx,ecx
mov cx, bx
cmp cx, 4341
JE ElsePart1
xor ebx,ebx
mov bx, ms [4]
NOT bx
OR cx,bx
JMP EndOfIf1
ElsePart1:
xor ebx,ebx
mov bx,cx
add bx, 66
EndOfIf1:
exit:

	Invoke ExitProcess,1
End Start