# dirs

`dirs` - Display directory stack.

See also: [`pushd`](pushd.md)

## View directory stack
```bash
$ pushd /lib
$ pushd /var
$ pushd /etc

# -v = vertical view of stack:
$ dirs -v
0       /etc
1       /var
2       /lib
3       ~
```
