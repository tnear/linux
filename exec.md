# exec

`exec` is a shell built-in which can either:

1. Replace the current shell process with another program
1. Manipulate file descriptors in current shell

## Replace process
`exec` replaces the current process instead of creating a new process. Therefore, it is more efficient. `exec` does not return to the original process because it replaces it.

```bash
#!/bin/bash
# run a script
$ exec python3 main.py
# (this line is never reached due to exec)
```

## Manipulating file descriptors

```bash
# redirect stdout for rest of script
$ exec > out.txt
$ echo 'goes to out.txt'
```

```bash
# redirect stdout and stderr for rest of script
$ exec > out.txt 2> err.txt
$ echo 'goes to out.txt'
$ echo 'goes to err.txt' >&2
```
