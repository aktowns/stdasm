%include "lib/system.asm"

global _getuid

_getuid:
  mov rax, SYS_getuid
  
  syscall
  ret
