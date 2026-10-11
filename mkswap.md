# mkswap

`mkswap` - set up a Linux swap area

See also: [`swapon`](swapon.md), [`swapoff`](swapoff.md)

## Introduction

*Swap* is disk space that Linux uses as an overflow area for RAM. When physical memory fills up, the kernel moves rarely used memory pages out to swap, freeing RAM for active work. When those pages are needed again, they are read back in.

## Examples
Syntax: `mkswap [options] device [size]`

```bash
## Example
```bash
# create 10MB file
$ sudo fallocate -l 10MB /testswap

# update permissions
$ sudo chmod 600 /testswap

# setup swap area for file
$ sudo mkswap /testswap

# enable swapping
$ sudo swapon /testswap

# -s, --summary = display summary
# Used: how much of Size swap is using
# Priority: kernel prefers high numbers (-2 in example below)
$ swapon -s
Filename       Type    Size       Used    Priority
/swapfile      file    1048572    0       -2
/testswap      file    9760       0       -3

# disable swapping when done
$ sudo swapoff /testswap

# remove swap file
$ sudo rm /testswap
```
