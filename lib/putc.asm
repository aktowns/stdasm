%include "lib/system.asm"

global _putc

;; put a character to stdio
;; push the character onto the stack before calling
_putc:
	mov rsi, rax
	mov rax, SYS_write
	mov rdi, stdout
	mov rdx, 1

	syscall

  ret
