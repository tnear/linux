# chmod

`chmod` - change mode - change file mode bits

See also: [`setuid`](setuid.md)

## Allow all to read, write, and execute a file
```bash
$ chmod 777 file.txt
```

### `-v` = verbose
```bash
$ chmod -v 777 file.txt
mode of 'file.txt' changed from 0644 (rw-r--r--) to 0777 (rwxrwxrwx)
```

## Symbolic modes

### Syntax
```bash
chmod [ugoa][+-=][rwxst]
u = user, g = group, o = others, a = all
+ is add, - is remove, = is assign
r = read, w = write, x = execute, s = setuid, t = sticky
```

### setuid (SUID)
See [`setuid`](setuid.md).

### 4-digit syntax
The first digit controls special bits. Ex: sticky=1, setuid=4:
```bash
$ chmod 4777 file.txt
```

### Another example
For user (`u`) and group (`g`), add write (`r`) and execute (`x`) permissions:
```bash
$ chmod ug+rx file.txt
```

## Execute bit
```bash
# Add execute permissions to a file for all users
$ chmod +x script.sh
```

## Change permissions recursively on a directory
Use `-R, --recursive` to change the bits of a folder and all its subfolders:
```bash
chmod -R 777 /path/to/directory
```
