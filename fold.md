# fold

`fold` - wrap each input line to fit in specified width

## Basic usage
```bash
# Fold line at 80 characters (default width)
$ fold long_line.txt
0123456789 0123456789 0123456789 0123456789 0123456789 0123456789 0123456789 012
3456789
```

## Specify width
Use `-w` to specify line width (default = 80).

```bash
$ fold -w 20 long_line.txt
0123456789 012345678
9 0123456789 0123456
789 0123456789 01234
56789 0123456789 012
3456789
```
