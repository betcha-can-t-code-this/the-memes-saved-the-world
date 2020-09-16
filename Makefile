AS = /usr/bin/as
LD = /usr/bin/ld

say-with-syscall-x86:
	$(AS) --32 -o say-with-syscall-x86.o say-with-syscall-x86.s
	$(LD) -melf_i386 -dynamic-linker /lib/ld-linux.so.2 -lc -o say-with-syscall-x86 say-with-syscall-x86.o
	./say-with-syscall-x86
	rm -f say-with-syscall-x86.o say-with-syscall-x86

say-with-syscall-x64:
	$(AS) -o say-with-syscall-x64.o say-with-syscall-x64.s
	$(LD) -dynamic-linker /lib64/ld-linux-x86-64.so.2 -lc -o say-with-syscall-x64 say-with-syscall-x64.o
	./say-with-syscall-x64
	rm -f say-with-syscall-x64.o say-with-syscall-x64

.PHONY:
	# ... :))
