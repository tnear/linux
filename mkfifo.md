# mkfifo

`mkfifo` - make FIFOs (named pipes)

## Basic usage
```bash
# create a named pipe
$ mkfifo my_pipe

# display its attributes (note the 'p' attribute)
$ ll my_pipe
prw-r--r-- 1 kali kali 0 Jun 21 09:53 my_pipe

# use 'ls' output to Write to named pipe
$ ls > my_pipe

# in terminal 2, read from my_pipe
$ cat < my_pipe
<output of 'ls' here>
```
