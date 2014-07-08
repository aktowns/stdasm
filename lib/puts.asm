%include "lib/system.asm"

global _puts

;; put a string to stdio
;; push the string and length onto the stack before calling
_puts:
  ;pop r9

  mov rdx, rdi
  mov rsi, rax
  ;pop rdx ; length
  ;mov rsi, rsp ; move the top of the stack address into rsi

  mov rax, SYS_write
  mov rdi, stdout

  syscall
  ;push r9
  ret
