.section .rodata
buf:
	.asciz "The memes saved the world!!\n"

.section .text
.globl _start
_start:
	# call syscall(__NR_write = 1, 1, buf, strlen(buf))
	xorq	%rdi, %rdi
	incq	%rdi
	xorq	%rsi, %rsi
	incq	%rsi
	leaq	buf, %rdx
	xorq	%rcx, %rcx
	addq	$0x1c, %rcx
	xorq	%rax, %rax
	call	syscall

	# call syscall(__NR_exit = 0x3c, 0)
	xorq	%rdi, %rdi
	addq	$0x3c, %rdi
	xorq	%rsi, %rsi
	call	syscall
