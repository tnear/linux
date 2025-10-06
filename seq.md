# seq

`seq` - print a sequence of numbers

Syntax: `$ seq <start> <stride> <stop>`

## Basic usage
```bash
# Print 1 to 3:
$ seq 3
1
2
3

# Print odd numbers from 3 to 7 using stride=2:
$ seq 3 2 7
3
5
7
```

## -s = separator character (':')
The default separator character is a newline.
```bash
$ seq -s ':' 10
1:2:3:4:5:6:7:8:9:10

# Multiply using seq.
# This generates 1*2*3*4*5*6*7 and pipes into bc
$ seq -s '*' 7 | bc
5040
```

## Common width
Use `-w` to make every number the same width.

```bash
seq -w 10
01
02
...
10
```
