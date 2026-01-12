# namei

`namei` - follow a pathname until a terminal point is found

`namei` follows symbolic links by default.

## Basic usage
```bash
$ namei /var/log/seq.txt
f: /var/log/seq.txt
 d /
 d var
 d log
 - seq.txt
```

Key:
- `d`: directory
- `f`: argument is file name
- `-`: regular file

## Long listing format
Use `-l, --long` for information on permissions and owner.

```bash
$ namei -l /etc/passwd
f: /etc/passwd
dr-xr-xr-x root root /
drwxr-xr-x root root etc
-rw-r--r-- root root passwd
```
