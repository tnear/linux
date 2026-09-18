# mountpoint

`mountpoint` - see if a directory or file is a mountpoint

See also: [`mount`](mount.md)

## Introduction

*Mounting* is the act of attaching a filesystem (ex: disk, usb drive, network share) onto a specific location. Once mounted, that filesystem's contents appear at that location, even though the data is physically elsewhere.

Ex: `$ mount /dev/sdb1 /mnt/usb`

### Mountpoint
A *mountpoint* is that attachment location (ex: `/mnt/usb` in example above).

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
