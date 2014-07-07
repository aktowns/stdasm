%include "lib/system.asm"

section .data
msg: db "Hello World", 10

section .text
global _main
extern _putc
extern _exit
extern _puts
extern _newline

_main:
	push 'A'
	call _putc
	call _newline

	;push 12
	;push msg
	;call _puts

	push 0
	call _exit

	leave
	ret
