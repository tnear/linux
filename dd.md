DD

dd - data definition - convert and copy a file

Often used to backup, restore, or destroy disks.
Uses "option=value" syntax instead of "-option value".

# if    = input file
# of    = output file
# bs    = block size = # bytes to read at a time (default = 512)
# count = number of blocks to count

# Write 100 bytes of random data to file myrand.txt:
$ dd if=/dev/urandom of=myrand.txt bs=100 count=1

$ ll myrand.txt
-rw-r--r-- 1 kali kali 100 Jun 24 08:09 myrand.txt

## Measure speed of writing to a directory
```bash
dd if=/dev/zero of=/tmp/regular/zero bs=4k count=100000
100000+0 records in
100000+0 records out
409600000 bytes (410 MB, 391 MiB) copied, 0.307224 s, 1.3 GB/s
```

## Measure speed of reading from a directory
```bash
dd if=/tmp/ramdisk/zero of=/dev/null bs=4K count=100000
100000+0 records in
100000+0 records out
409600000 bytes (410 MB, 391 MiB) copied, 0.117927 s, 3.5 GB/s
```

---