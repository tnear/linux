# pstack

`gstack` - print a stack trace of a running process

Installed with [`gdb`](gdb.md)

## Basic usage

```bash
$ pstack <app_id>
$ pstack $(pidof my_app)
```

### Example usage
```bash
# run on current process (shell)
$ pstack $$
#0  0x00007f1468c089ec in sigsuspend () from /lib64/libc.so.6
#1  0x0000556581e7b961 in zwaitjob ()
#2  0x0000556581e7bcd8 in waitjobs ()
#3  0x0000556581e52ce2 in execpline ()
#4  0x0000556581e53d1a in execlist ()
#5  0x0000556581e5460a in execode ()
#6  0x0000556581e720c9 in loop ()
#7  0x0000556581e79b26 in zsh_main ()
#8  0x0000556581e27a2f in main ()
```
