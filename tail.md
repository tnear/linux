# tail

`tail` - output the last part of files

## Basic usage
Output last 10 lines (default) of `/etc/passwd`
```bash
tail /etc/passwd
```

### Specify number of lines (default is 10)
Use `-n <num>` to output the last `n` lines.
```bash
# Output last two lines of /etc/passwd:
tail -n 2 /etc/passwd
```

## Follow file
The `-F` flag will follow a file if it is renamed or rotated. It also updates real-time if data is appended to the log. Useful for monitoring active log files.
```bash
tail -F /varlog/system.log
```
