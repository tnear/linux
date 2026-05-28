# zcat

`zcat` - concatenate files within an archive without unzipping

See also: [`cat`](cat.md), [`gzip`](gzip.md), [`zless`](zless.md), [`zgrep`](zgrep.md)

## Basic usage

```bash
$ cat users.list
1 - u1
2 - user 2

# create zip file
$ gzip users.list

# show file contents without extracting
$ zcat users.list.gz
1 - u1
2 - user 2
```
