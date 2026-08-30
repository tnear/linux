# readlink

`readlink` - print resolved symbolic links or canonical file names

See also: [`ln`](ln.md)

## Resolve symbolic link
```bash
$ touch a.txt
$ ln -s a.txt soft.lnk
$ readlink soft.lnk
a.txt
```
