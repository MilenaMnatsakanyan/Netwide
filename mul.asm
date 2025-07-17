extern printf
extern scanf

section .data
		first_msg db "Enter the first number : ", 0
		sec_msg db "Enter the second number : ", 0
		frmt1 db "%d" ,0
		frmt2 db "%d" ,0
		finish_msg db "the result is : %d "

section .text
		global main 
main:
		push rbp
		mov rbp, rsp
		sub rsp, 16

		mov rdi, first_msg
		xor rax, rax
		call printf

		mov rdi, frmt1
		lea rsi, [rbp -8]
		xor rax, rax
		call scanf

		mov rdi, sec_msg
		xor rax, rax
		call printf

		mov rdi, frmt2
		lea rsi, [rbp-16]
		xor rax, rax
		call scanf
		
		xor rax, rax
		mov rax, [rbp-8]
		mov rbx, [rbp-16]
		mul rbx	
		
		mov rdi, finish_msg
		lea rsi, [rax]
		call printf

		mov rsp, rbp
		pop rbp
		ret
