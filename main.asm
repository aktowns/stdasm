%include "lib/system.asm"

section .data
msg: db "UID:", 10

section .text
global _main
extern _putc
extern _exit
extern _puts
extern _getuid

_showuid:
	mov rax, msg
	mov rdi, 4
	call _puts

	call _getuid
	; atoi
	mov rdi, rax
	add rdi, 48
	stackalloc rdi, rax
	call _putc

	ret

_main:
	call _showuid

	mov rax, 0
	call _exit

	leave
	ret
