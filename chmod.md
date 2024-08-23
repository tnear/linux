# chmod

`chmod` - change mode - change file mode bits

## Allow all to read, write, and execute a file
```
$ chmod 777 file.txt
```

### -v = verbose
```
$ chmod -v 777 file.txt
mode of 'file.txt' changed from 0644 (rw-r--r--) to 0777 (rwxrwxrwx)
```

## Symbolic modes

### Syntax
```
chmod [ugoa][+-=][rwxst]
u = user, g = group, o = others, a = all
+ is add, - is remove, = is assign
r = read, w = write, x = execute, s = setuid, t = sticky
```

### Sticky bit (SUID)
SUID sets effective user ID for calling process. Useful for running as root. The `passwd` command uses the sticky bit. When the bit is set, `ls` displays a red background color for the file.
```
# For current user (u), add (+) SUID bit (set user ID bit)
$ chmod u+s file.txt
```

### 4-digit syntax
The first digit controls special bits. SUID=4, Sticky=1:
```
$ chmod 4777 file.txt
```

### Another example
For user (u) and group (g), add write (r) and execute (x) permissions:
```
$ chmod ug+rx file.txt
```

## Execute bit
```
# Add execute permissions to a file for all users
$ chmod +x script.sh
```

## Change permissions recursively on a directory
Use `-R, --recursive` to change the bits of a folder and all its subfolders:
```
chmod -R 777 /path/to/directory
```
