# od

`od` - (octal dump) dump files in octal and other formats

See also: [`hexdump`](hexdump.md)

## Basic usage

```bash
# use -c ot print ascii characters
$ cat file.txt
hello world

$ od -c file.txt
0000000   h   e   l   l   o       w   o   r   l   d  \n
0000014
```
