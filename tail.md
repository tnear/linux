# tail

`tail` - output the last part of files

See also: [`head`](head.md)

## Basic usage
Output last 10 lines (default) of file
```bash
tail /etc/passwd
```

### Specify number of lines
Use `-n <num>` to output the last `n` lines.
```bash
# Output last two lines of /etc/passwd:
tail -n 2 /etc/passwd
```

## Follow file
Following files is useful to monitor in real-time when data is appended to the log.

### Follow file handle
Use `tail -f <file>`.

### Follow file name
The `-F` flag will follow a file if it is renamed or rotated.
```bash
tail -F /var/log/system.log
```
