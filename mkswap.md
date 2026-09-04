# mkswap

`mkswap` - set up a Linux swap area

See also: [`swapon`](swapon.md)

## Introduction:
Syntax: `mkswap [options] device [size]`

```bash
# create 10MB file
$ sudo fallocate -l 10MB /testswap

# update permissions
$ sudo chmod 600 /testswap

# setup swap area for file
$ sudo mkswap /testswap
```
