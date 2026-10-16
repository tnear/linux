# sum

`sum` - checksum and count the blocks in a file

See also: [`cksum`](cksum.md)

## Basic usage

```bash
$ sum /etc/passwd
06003     3

$ ll /etc/passwd
-rw-r--r--. 1 root root 2.4K Jul 31 22:52 /etc/passwd
```

- `06003`: checksum from file's contents. Range is `[0-65535]`
- `3`: size in 1 KB blocks rounded up. `3` indicates `[2049-3072]` bytes
