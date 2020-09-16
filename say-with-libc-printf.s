.section .rodata
buf:
	.asciz "The memes saved the world!!\n"

.section .text
.globl _start
_start:
	leaq	buf, %rdi
	xorq	%rax, %rax
	callq	printf

	xorq	%rdi, %rdi
	callq	exit
