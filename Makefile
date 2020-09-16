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

say-with-libc-printf:
	$(AS) -o say-with-libc-printf.o say-with-libc-printf.s
	$(LD) -dynamic-linker /lib64/ld-linux-x86-64.so.2 -lc -o say-with-libc-printf say-with-libc-printf.o
	./say-with-libc-printf
	rm -f say-with-libc-printf.o say-with-libc-printf

say-with-libc-write:
	$(AS) -o say-with-libc-write.o say-with-libc-write.s
	$(LD) -dynamic-linker /lib64/ld-linux-x86-64.so.2 -lc -o say-with-libc-write say-with-libc-write.o
	./say-with-libc-write
	rm -f say-with-libc-write.o say-with-libc-write

say-with-libc-syscall:
	$(AS) -o say-with-libc-syscall.o say-with-libc-syscall.s
	$(LD) -dynamic-linker /lib64/ld-linux-x86-64.so.2 -lc -o say-with-libc-syscall say-with-libc-syscall.o
	./say-with-libc-syscall
	rm -f say-with-libc-syscall.o say-with-libc-syscall

.PHONY:
	# ... :))
