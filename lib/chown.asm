%include "lib/system.asm"

global _chown

_chown:
  mov rax, rdi
  mov rax, SYS_chown
  syscall
  ret
