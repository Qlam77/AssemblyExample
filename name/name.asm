section .data
    header1: db "===            ===", 0x0A ;header1
    len1: equ $-header1 ;buffer for header 1

    header2: db "---            ---", 0x0A ;header2
    len2: equ $-header2 ;buffer for header 2

    name: db "<<< Quincy Lam >>>", 0x0A ;header2
    lenN: equ $-name ;buffer for name

section .text
global asm_main

asm_main:
    mov edx, len1       ;sets first header length
    mov ecx, header1    ;sets print buf for first header
    mov ebx, 1          ;sets print to stdout, fd 1
    mov eax, 0x04       ;sys write function
    int 0x80            ;call kernel

    mov edx, len2       ;sets second header length
    mov ecx, header2    ;sets print buf for second header
    mov ebx, 1          ;sets print to stdout, fd 1
    mov eax, 0x04       ;sys write function
    int 0x80            ;call kernel

    mov edx, lenN       ;sets the name length
    mov ecx, name       ;sets print buf for name
    mov ebx, 1          ;sets print to stdout, fd 1
    mov eax, 0x04       ;sys write function
    int 0x80            ;call kernel

    mov edx, len2       ;sets the second header length
    mov ecx, header2    ;sets print buf for second header
    mov ebx, 1          ;sets print to stdout, fd 1
    mov eax, 0x04       ;sys write function
    int 0x80            ;call kernel

    mov edx, len1       ;sets first header length
    mov ecx, header1    ;sets print buf for first header
    mov eax, 0x04       ;sys write function
    int 0x80            ;call kernel

    ret                 ;returns
