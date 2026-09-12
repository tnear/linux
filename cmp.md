# cmp

`cmp` - compare two files byte by byte

See also: [`diff`](diff.md), [`patch`](patch.md)

## Basic usage
```bash
# create two different files
$ printf 'hello' > a.txt
$ printf 'hey' > b.txt

# compare them with cmp
$ cmp a.txt b.txt
a.txt b.txt differ: byte 3, line 1

# compare same file
$ cmp a.txt a.txt
<no output for same contents>

# -b, --print-bytes: print differing bytes
$ cmp -b a.txt b.txt
a.txt b.txt differ: byte 3, line 1 is 154 l 171 y
```
