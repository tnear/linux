# syscalls

`syscalls` - Linux system calls

`man syscalls`

Searchable Linux Syscall Table for x86 and x86_64.

## Register order for syscalls
```bash
$ man syscall
Arch     arg1  arg2  arg3  arg4  arg5  arg6  arg7
i386     ebx   ecx   edx   esi   edi   ebp   -
x86-64   rdi   rsi   rdx   r10   r8    r9    -
```

## Common system calls
| Syscall | Description |
|---------|-------------|
|`brk`    | Change data segment size. Old, use mmap or malloc instead.|
|`chdir`  | Change working directory.|
|`chmod`  | Change file's protection bits.|
|`close`  | Close an open file.|
|`execve` | Execute a program. Often the first system call to execute.|
|`exit`   | Terminate process execution and return status.|
|`fork`   | Create a child process identical to parent (file descriptors, registers, vars)|
|`kill`   | Send signal to a process.|
|`lseek`  | Changes position of file pointer to allow random access to any byte in file.|
|`malloc` | Allocate dynamic memory.|
|`open`   | Open a file for reading/writing.|
|`read`   | Read data from file into a buffer.|
|`select` | Allows monitoring multiple file descriptors, waiting until one becomes "ready"|
|`socket` | Create an endpoint for communication|
|`waitpid`| Wait for a child to terminate. Often used in conjunction with fork().|
|`write`  | Write data from buffer into file.|
