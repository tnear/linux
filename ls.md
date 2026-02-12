# ls

`ls` - list directory contents

See also: [`ll`](ll.md)

## Common flags
- `-a, --all`: list all files (including hidden)
- `-d, --directory`: list directory itself (instead of directory contents)
- `-h, --human-readable`: human-readable sizes (ex: 977K instead of 1000000)
- `-i, --inode`: include inode number (ex: `ls -li`)
- `-l`: long format
- `-r, --reverse`: reverse output order
- `-R, --recursive`: recursive list of sub-directories, ex: `ls -lR`
- `-S`: sort by size (largest first)
- `-t`: sort by timestamp, ex: `ls -ltr` shows oldest contents on top
- `-Z, --context`: print any [security context](se_linux.md#security-context) of each file (SELinux)

## List all symbolic links in sub-directories of pwd
```bash
$ ls -lR | grep '^l'

# Note: a better way is using 'find':
# find . -type l -ls
```

### List directory itself
The `-d` lists the directory itself instead of the files it contains. Directories have the letter 'd' at the front.
```bash
$ ls -ld /tmp
drwxrwxrwt 14 root 4096 /tmp
```

## Glob
Use `*` for globs (wildcards).
```bash
$ ls /tmp/*Data*
/tmp/MyData.txt
/tmp/TheData.log
```

## File types
The output `ls -l` uses the first character to denote the file type.

- `-` = regular file
- `b` = block special file
- `c` = character special file
- `C` = high performance (“contiguous data”) file
- `d` = directory
- `D` = door (Solaris 2.5 and up)
- `l` = symbolic link
- `p` = [`FIFO`](mkfifo.md) (named pipe)
- `P` = port (Solaris 10 and up)
- `s` = socket
- `?` = some other file type

For example,
```bash
$ ll
total 12
-rw-r--r--. 1 user1 access-login 905 Jul 15 19:15 asan_out.txt
drwxr-xr-x. 2 root  root           6 Jun 29 00:52 repo_dir
srwxr-xr-x. 1 user1 access-login   0 Jul 15 19:24 socketFile
```

- `asan_out.txt` is a regular file (`-`)
- `repo_dir` is a directory
- `socketFile` is a Unix domain socket indicated by the `s` in `srwxr-xr-x`

## Case insensitive
`ls` by itself does not do case insensitive searches. Instead, use `find` with `-iname` and `-ls` flags.

```bash
$ find /tmp/ -iname '*data*' -ls
2853037  8 -rw-r--r--  1 user grp  756 Jul 11 09:10 /tmp/MyData.txt
```
