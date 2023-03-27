DIRS

Display directory stack.

# All multiple directories to stack:
$ pushd /lib
$ pushd /var
$ pushd /etc

# -v = vertical view of stack:
$ dirs -v
0       /etc
1       /var
2       /lib
3       ~

---