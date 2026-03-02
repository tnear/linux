# zcat

`zcat` concatenates files within an archive without unzipping it.

See also: [`cat`](cat.md), [`gzip`](gzip.md)

## Basic usage

```bash
$ cat users.list
1 - u1
2 - user 2

$ gzip users.list

# show file contents without extracting
$ zcat users.list.gz
1 - u1
2 - user 2
```
