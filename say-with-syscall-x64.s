.section .rodata
buf:
	.asciz "The memes saved the world!!\n"

.section .text
.globl _start
_start:
	# call __NR_write
	xorq	%rdi, %rdi
	incq	%rdi
	movq	$buf, %rsi
	xorq	%rdx, %rdx
	addq	$0x1c, %rdx
	xorq	%rax, %rax
	incq	%rax
	syscall

	# call __NR_exit
	xorq	%rax, %rax
	addq	$0x3c, %rax
	xorq	%rdi, %rdi
	syscall
