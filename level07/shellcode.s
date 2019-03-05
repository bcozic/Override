section .text
global start
global main

start:
main:
push   ebp
mov    ebp, esp
mov    esi, edx
add    esi, 12
jmp    esi
add    edx, 12
jmp    edx
mov    ebx, 0xffffd574
jmp    esi
xor    ecx, ecx
xor    edx, edx
mov    al, 0xb
int    0x80
ret
leave