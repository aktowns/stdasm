%include "lib/system.asm"

section .data
msg: db "UID:", 10

section .text
global _main
extern _putc
extern _exit
extern _puts
extern _getuid

_main:
	;stackalloc 'A', rax
	;call _putc
	;stackdealloc

	;call _newline

	;push 12
	;push msg
	;call _puts
	mov rax, msg
	mov rdi, 4
	call _puts

	call _getuid
	; atoi
	mov rdi, rax
	add rdi, 48
	stackalloc rdi, rax
	call _putc

	mov rax, 0
	call _exit

	leave
	ret
