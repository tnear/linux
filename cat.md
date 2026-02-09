# cat

`cat` - concatenate files and print on the standard output

See also: [`zcat`](zcat.md)

## Basic usage
```bash
# Display passwd file
$ cat /etc/passwd

# Filter output using grep
$ cat /etc/passwd | grep root
```

## Common flags
- `-n`: show line numbers, ex: `cat -n file`