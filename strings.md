# strings

`strings` - print the sequences of printable characters in files

Find strings in (binary) files. Defaults to 4+ characters

## Basic usage
```bash
# find 4+ character strings
$ strings shellclean.o
/bin/bashABBBBCCCC

# find 2+ character strings using -n2
$ strings -n2 shellclean.o
ELF
/bin/bashABBBBCCCC
```
