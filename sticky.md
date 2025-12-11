# sticky

The `sticky` bit permits only the file owner to rename or delete files inside directory.

See also: [`chmod`](chmod.md)

## Basic usage
```bash
# use chmod to set sticky bit.
$ chmod +t my_dir    # symbolic syntax
$ chmod 1777 my_dir  # numeric syntax

# verify 't' flag in permissions
$ ll -d my_dir
drwxr-xr-t 2 kali kali 4096 Mar 25 16:31 my_dir
```
