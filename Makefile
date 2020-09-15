AS = /usr/bin/as
LD = /usr/bin/ld

say-with-syscall-x86:
	$(AS) --32 -o say-with-syscall-x86.o say-with-syscall-x86.s
	$(LD) -melf_i386 -dynamic-linker /lib/ld-linux.so.2 -lc -o say-with-syscall-x86 say-with-syscall-x86.o
	./say-with-syscall-x86
	rm -rf say-with-syscall-x86.o say-with-syscall-x86

.PHONY:
	# ... :))
