# mountpoint

`mountpoint` - see if a directory or file is a mountpoint

See also: [`mount`](mount.md)

## Basic usage
```bash
$ mountpoint /var
/var is a mountpoint

$ mountpoint /tmp
/tmp is not a mountpoint

# bad path
$ mountpoint /fake_dir
mountpoint: /fake_dir: No such file or directory
```
