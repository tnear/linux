# hexdump

`hexdump` - display file contents in hexadecimal, decimal, octal, or ascii

## hexdump
Use the `-C` flag to show a right column (recommended).
```bash
$ hexdump -C file.txt  # Equivalent to 'hd'
00000000  68 65 6c 6c 6f 0a         |hello.|
00000006
```

### `hd`
`hd` adds the right column by default.

```bash
$ echo 'hello' > file.txt
$ hd file.txt
00000000  68 65 6c 6c 6f 0a         |hello.|
```
