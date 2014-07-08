%include "lib/system.asm"

global _exit

;; exit, push the return value onto the stack
_exit:
  ;pop r9 ; wats in stack yo?
  ;pop rdi
	mov rax, rdi
  mov rax, SYS_exit
  syscall
  ; push r9 ; unreachable?
  ret
