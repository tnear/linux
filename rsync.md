# rsync

`rsync` - a fast, versatile, remote (and local) file-copying tool

See also: [`scp`](scp.md)

## Common flags

- `-a, --archive`: recursive copy, preserving all metadata (recommended)
- `-v, --verbose`: by default, sync is silent
- `-P`: Show progress while preserving partially transferred files (recommended)

## Copy all files from `dir/` to `newDir/`
```bash
# (rsync will create newDir if it doesn't exist)
$ rsync -avP dir newDir/
sending incremental file list
created directory newDir
dir/
dir/hello.txt

sent 146 bytes  received 68 bytes  428.00 bytes/sec
total size is 6  speedup is 0.03
```

## Remote computer with partial and progress
Using `rsync` for remote transfers because the `-P` flag will resume file transfer after recovering from a disconnect.
```bash
$ rsync -P a.html tnear@100.101.102.103:/home/user
a.html
           0 100%    0.00kB/s    0:00:00 (xfer#1, to-check=0/1)

sent 83 bytes  received 42 bytes  22.73 bytes/sec
total size is 0  speedup is 0.00
```
