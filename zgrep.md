# zgrep

`zgrep` - search possibly compressed files for a regular expression

See also: [`zcat`](zcat.md), [`zless`](zless.md)

## Basic usage
```bash
$ cat users.list
1 - u1
2 - user 2

# create zip file
$ gzip users.list

# search zip file
$ zgrep 'user' users.list.gz
2 - user 2
```
