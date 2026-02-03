# mktemp

`mktemp` - create a temporary file or directory

## Basic usage
```bash
# create a temporary file
$ mktemp
/tmp/tmp.prF7w3Di9P

# Create a temporary directory using -d
$ mktemp -d
/tmp/tmp.BBTBG6KZwh

# Create a temporary directory and navigate
# there in one command
$ cd $(mktemp -d)
[/tmp/tmp.8F5BTjCwhG] $
```

## Placeholders
Use `XXX...` with `mktemp` to fill in with random characters. There must be at least 3 consecutive X's.

```bash
$ mktemp my_data.XXXX.log
my_data.Kly9.log
```
