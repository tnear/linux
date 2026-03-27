# filefrag

`filefrag` - report on file fragmentation

Fragmentation occurs when a file's data blocks are not stored contiguously, potentially impacting performance.

## Basic usage

Fewer extents means less fragmentation.

```bash
# this file shows 1 extent (fragment) makes up the file.
$ filefrag /etc/passwd
/etc/passwd: 1 extent found

# verbose
$ filefrag -v /etc/passwd
Filesystem type is: 58465342
File size of /etc/passwd is 2670 (1 block of 4096 bytes)
 ext:   logical_offset:      physical_offset: length:  flags:
   0:      0..       0:   204008..    204008:      1:  last,eof
/etc/passwd: 1 extent found
```
