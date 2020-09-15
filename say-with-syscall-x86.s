.section .rodata
buf:
	.asciz "The memes saved the world!!\n"

.section .text
.globl _start
_start:
	# call __NR_write
	movl	$0x4, %eax
	xorl	%ebx, %ebx
	incl	%ebx
	movl	$buf, %ecx
	movl	$0x1c, %edx
	int	$0x80

	# call __NR_exit
	xorl	%eax, %eax
	incl	%eax
	xorl	%ebx, %ebx
	int	$0x80
