# chattr

`chattr` - change file attributes on a Linux file system

See also: [`lsattr`](lsattr.md)

## Make immutable file (or directory)
This example shows an example on a file, but the commands are identical for working with immutable directories.

```bash
$ touch file.txt
$ lsattr file.txt
--------------e------- file.txt

# make file.txt immutable (i)
$ sudo chattr +i file.txt
----i---------e------- file.txt

# this file cannot be deleted even by root
$ sudo rm file.txt
rm: cannot remove 'file.txt': Operation not permitted

# remove `i` attribute then delete file
$ sudo chattr -i file.txt
$ rm file.txt
```
