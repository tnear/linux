# zcat

The `zcat` command allows viewing the files within an archive without unzipping it.

## Basic usage

```
$ cat users.list
1 - u1
2 - user 2
3 - user #3

$ gzip users.list

# show contents without extracting
$ zcat users.list.gz
1 - u1
2 - user 2
3 - user #3
```
