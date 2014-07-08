all:
	nasm -f macho64 lib/exit.asm
	nasm -f macho64 lib/putc.asm
	nasm -f macho64 lib/puts.asm
	nasm -f macho64 lib/uid.asm
	nasm -f macho64 lib/chown.asm
	nasm -f macho64 main.asm
	clang -nostdlib -lSystem -o test lib/exit.o lib/putc.o lib/puts.o lib/uid.o lib/chown.o main.o

clean:
	rm *.o
	rm lib/*.o
	rm test
