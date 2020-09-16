.section .rodata
buf:
	.asciz "The memes saved the world!!\n"

.section .text
.globl _start
_start:
	# call write()
	xorq	%rdi, %rdi
	incq	%rdi
	leaq	buf, %rsi
	xorq	%rdx, %rdx
	addq	$0x1c, %rdx
	xorq	%rax, %rax
	call	write

	# call exit()
	xorq	%rdi, %rdi
	xorq	%rax, %rax
	call	exit
