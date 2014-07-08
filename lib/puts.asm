%include "lib/system.asm"

global _puts

;; put a string to stdio
;; push the string and length onto the stack before calling
_puts:
  mov rdx, rdi
  mov rsi, rax

  mov rax, SYS_write
  mov rdi, stdout

  syscall
  ret
