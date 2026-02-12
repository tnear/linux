# sticky

The `sticky` bit permits only the file owner to rename or delete files inside directory.

See also: [`chmod`](chmod.md), [`setuid`](setuid.md)

## `/tmp`
The sticky bit is most commonly seen on `/tmp` to allow anyone to write there, but only the file owner or root to delete.

```bash
ls -ld /tmp
drwxrwxrwt. 1 root root 4096 Feb 11 17:04 /tmp
```

## Basic usage
```bash
# use chmod to set sticky bit
$ chmod +t my_dir    # symbolic syntax
$ chmod 1777 my_dir  # numeric syntax

# verify 't' flag in permissions
$ ll -d my_dir
drwxr-xr-t 2 kali kali 4096 Mar 25 16:31 my_dir
```
