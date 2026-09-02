# tree

`tree` - list contents of directories in a tree-like format.

## Basic usage

```bash
$ mkdir test
$ touch test/file.txt
$ tree test
test
└── file.txt

# -P = pattern
# Print all .c files in home directory (~) or beneath
$ tree -P '*.c' ~

# -L = level
# Print up to two levels
$ tree -L 2
```
