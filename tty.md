# tty

`tty` - print the file name of the terminal connected to standard input

## Basic usage
```bash
# return terminal in file form (everything is a file)
$ tty
/dev/pts/0

# list terminal file attributes
$ ll $(tty)
crw------- 1 user tty 136, 0 Mar 16 15:36 /dev/pts/0
```
