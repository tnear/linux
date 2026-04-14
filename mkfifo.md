# mkfifo

`mkfifo` - make FIFOs (named pipes)

A pipe (aka FIFO) lets one process write data and another process read it, like a pipe (`|`), but through a pathname on disk.

See also: [`mknod`](mknod.md)

## Basic usage
```bash
# create a named pipe
$ mkfifo my_pipe

# display its attributes (note the 'p'=pipe attribute)
$ ll my_pipe
prw-r--r-- 1 user user 0 Jun 21 09:53 my_pipe

# use 'ls' output to write to named pipe (process will wait)
$ ls > my_pipe

# in separate terminal, read from my_pipe
$ cat < my_pipe
<output of 'ls' here>

# delete when done
$ rm my_pipe
```
