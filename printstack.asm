extern printf
extern scanf
section .data
    print_msg db "enter the number : " ,10 , 0
    frmt db "%ld", 0
    finish_msg db "your number is  %ld :  " ,0

section .text
    global main

main:
    push rbp
    mov rbp, rsp

    sub rsp, 16
    mov rdi, print_msg
    xor rax, rax
    call printf

    mov rdi, frmt
    lea rsi, [rbp - 8]
    xor rax, rax
    call scanf

    mov rdi, finish_msg
    mov rsi, [rbp -8]
    xor rax, rax
    call printf
    
    mov rsp ,rbp
    pop rbp
    ret

