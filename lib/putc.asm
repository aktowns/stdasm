%include "lib/system.asm"

global _putc
global _newline

;; put a character to stdio
;; push the character onto the stack before calling
_putc:
	pop r9 ; TODO: ?? i don't get what should be at the stack here???
	; mov rsi, rsp ; move the top of the stack address into rsi

  ; mov rax, SYS_write
  ; mov rdi, stdout
  ; mov rdx, 1

  ; syscall

	do_syscall SYS_write, stdout, rsp, 1

	push r9 ; TODO: ^ above i don't know what this is.. return call?
	ret

;; newlines.
_newline:
	pop r9

	push 10
	call _putc

	push r9
	ret
