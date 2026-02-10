# lsattr

`lsattr` - list file attributes on a Linux second extended file system

See also: [`chattr`](chattr.md)

## Basic usage

```bash
$ touch file.txt

# 'e' attribute means 'extent' format.
# All ext4 systems should have 'e' set.
$ lsattr file.txt
--------------e------- file.txt

# Make file.txt immutable (i):
$ sudo chattr +i file.txt
----i---------e------- file.txt

# This file cannot be deleted even by root:
$ sudo rm file.txt
rm: cannot remove 'file.txt': Operation not permitted

# Remove 'i' attribute then delete file:
$ sudo chattr -i file.txt
$ rm file.txt
```

## Directories
Use `-d` to list attributes on directory itself.

```bash
$ lsattr -d /
$ lsattr -d /var/log
```
