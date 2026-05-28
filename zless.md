# zless

`zless` - file perusal filter for crt viewing of compressed text

See also: [`zcat`](zcat.md), [`zgrep`](zgrep.md)

## Basic usage

```bash
$ cat users.list
1 - u1
2 - user 2

# create zip file
$ gzip users.list

# page through file without extracting
$ zless users.list.gz
1 - u1
2 - user 2
/tmp/users.list.gz (END)
```
