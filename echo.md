# echo

`echo` - display a line of text

## Echo by default adds newline
```
$ echo hello
hello\n
```

### Use -n to avoid newline suffix
```
$ echo -n hello
hello
```

## Files
### Create file (or overwrite)
```
$ echo 'hello' > file.txt
```

### Append to file (>>)
```
$ echo 'world' >> file.txt
$ cat file.txt
hello
world
```

### Interpret backslashes
Use the `-e` flag to interpret backslashes. Useful for writing newlines to a file.

```bash
$ echo 'a\nbc'    # does not insert newline
a\nbc

$ echo -e 'a\nbc' # inserts newline
a
bc
```
