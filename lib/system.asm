;; IO
%define stdin       0
%define stdout      1
%define stderr      2

;; system calls
%define SYS_syscall     0x2000000
%define SYS_exit        0x2000001
%define SYS_fork        0x2000002
%define SYS_read        0x2000003
%define SYS_write       0x2000004
%define SYS_open        0x2000005
%define SYS_close       0x2000006
%define SYS_wait4       0x2000007
;; 8
%define SYS_link        0x2000009
%define SYS_unlink      0x2000010
%define SYS_chdir       0x2000012
%define SYS_fchdir      0x2000013
%define SYS_mknod       0x2000014
%define SYS_chmod       0x2000015
%define SYS_chown       0x2000016
;; 17
%define SYS_getfsstat   0x2000018
;; 19
%define SYS_getpid      0x2000020
;; 21
;; 22
%define SYS_setuid      0x2000023
%define SYS_getuid      0x2000024
%define SYS_geteuid     0x2000025
%define SYS_ptrace      0x2000026
%define SYS_recvmsg     0x2000027
%define SYS_sendmsg     0x2000028
%define SYS_recvfrom    0x2000029
%define SYS_accept      0x2000030
%define SYS_getpeername 0x2000031
%define SYS_getsockname 0x2000032
%define SYS_access      0x2000033
%define SYS_chflags     0x2000034
%define SYS_fchflags    0x2000035
%define SYS_sync        0x2000036
%define SYS_kill        0x2000037

;; This is probably a shitty idea but a simple hack
;; to push a literal onto the stack, mov it to %2
;; this doesn't clean up afterwards as the address needs to still
;; exist in memory.
%macro stackalloc 2
  push %1
  mov %2, rsp
%endmacro

%macro stackdealloc 0
  pop rax
%endmacro
