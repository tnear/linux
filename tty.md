TTY

tty - print the file name of the terminal connected to standard input

# Return terminal in file form (everything is a file):
$ tty
/dev/pts/0

# List terminal file attributes:
$ ll $(tty)
crw------- 1 kali tty 136, 0 Mar 16 15:36 /dev/pts/0

---