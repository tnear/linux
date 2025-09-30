# Registers

A register is a small storage location for data. Registers are limited in number. Accessing a register is extremely fast.

### Register size
Registers are typically 64-bits in 64 bit architectures.

### Register order for syscalls:
```bash
$ man syscall

|Arch   |  arg1 | arg2 | arg3 | arg4 | arg5 | arg6 | arg7 |
|-------|-------|------|------|------|------|------|------|
|i386   | ebx   | ecx  | edx  | esi  | edi  | ebp  | -    |
|x86-64 | rdi   | rsi  | rdx  | r10  | r8   | r9   | -    |

Note: `rax` is set to the system call number.
```

### Calling convention
Registers are *shared* between functions, therefore must follow conventions about which registers are callee-saved and caller-saved.
