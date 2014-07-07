all:
	nasm -f macho64 lib/exit.asm
	nasm -f macho64 lib/putc.asm
	nasm -f macho64 lib/puts.asm
	nasm -f macho64 main.asm
	clang -nostdlib -lSystem -o test lib/exit.o lib/putc.o lib/puts.o main.o

clean:
	rm *.o
	rm lib/*.o
	rm test
