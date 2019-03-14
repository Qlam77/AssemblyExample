%include "asm_io.inc"
%assign SYS_EXIT 1

section .data
    result  dd  0

section .text
global asm_main

asm_main:

    mov ebx, 3              ;put value 3 into ebx
    mov ecx, 5              ;put value 5 into exc
    mov edx, 6              ;put value 6 into edx
    call sumup              ;calls sumup function
    call print_int          ;external library call, print whatever's in eax
    call print_nl           ;new line

    mov ebx, 15             ;put value 15 into ebx
    mov ecx, 20             ;put value 20 into ecx
    mov edx, 30             ;put value 30 into edx
    call sumup              ;calls sumup function
    call print_int          ;external library call, print whatever's in eax
    call print_nl           ;new line


sumup:
    mov esi, ebx    ;move whatever was in ebx to unused register, esi
    add esi, ecx    ;add from ecx onto esi
    add esi, edx    ;add from edx onto esi
    mov [result], esi   ;save addition result from esi to array
    mov eax, [result]       ;1st argument, int to be printed, move result in the array to eax printer

    ret             ;return
