LS

ls - list directory contents

# Common flags:
-a = list all files (including hidden)
-d = list directory itself (instead of directory contents)
-h = human-readable sizes (ex: 977K instead of 1000000)
-i = include inode number (ex: $ ls -li)
-l = long format
-r = reverse output order
-R = recursive search of sub-directories, ex: $ ls -lR
-S = sort by size (largest first)
-t = sort by timestamp, ex: $ ls -ltr shows oldest contents on top

# List all symbolic links in sub-directories of pwd:
$ ls -lR | grep '^l'

# Note: a better way is using 'find':
# find . -type l -ls

# -d = list directory itself. Directories have the letter 'd' at the front:
$ ls -ld /tmp
drwxrwxrwt 14 root 4096 /tmp

## Wildcard
Use a '*' character for wildcards.
```
$ ls /tmp/*Data*
/tmp/MyData.txt
/tmp/TheData.log
```

## File types
When doing `ls -l`, the first character denotes the file type.

```
'-' regular file
'b' block special file
'c' character special file
'C' high performance (“contiguous data”) file
'd' directory
'D' door (Solaris 2.5 and up)
'l' symbolic link
'M' off-line (“migrated”) file (Cray DMF)
'n' network special file (HP-UX)
'p' FIFO (named pipe)
'P' port (Solaris 10 and up)
's' socket
'?' some other file type
```

For example,
```
$ ll
total 12
-rw-r--r--. 1 user1 access-login 905 Jul 15 19:15 asan_suppression_file
drwxr-xr-x. 2 root  root           6 Jun 29 00:52 repo_helper_cache
srwxr-xr-x. 1 user1 access-login   0 Jul 15 19:24 socketFile
```

The `s` in `srwxr-xr-x` denotes a socket file.

## Case insensitive
To do a case insensitive listing, use `find` with the `-ls` flag.
```
$ find /tmp/ -iname '*data*' -ls
2853037        8 -rw-r--r--    1 tnear    wheel        756 Jul 11 09:10 /tmp//MyData.txt
```

---