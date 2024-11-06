# chattr

`chattr` - change file attributes on a Linux file system

## Make immutable file (or directory)
This example shows an example on a file, but the commands are identical for working with immutable directories.

```
$ touch file.txt
$ lsattr file.txt
--------------e------- file.txt

# Make file.txt immutable (i):
$ sudo chattr +i file.txt
----i---------e------- file.txt

# This file cannot be deleted even by root:
$ sudo rm file.txt
rm: cannot remove 'file.txt': Operation not permitted

# Remove `i` attribute then delete file:
$ sudo chattr -i file.txt
$ rm file.txt
```
