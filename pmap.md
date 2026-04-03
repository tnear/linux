# pmap

`pmap` - report memory map of a process

The memory map indicates how memory for a process is spread out.

Syntax: `pmap [options] pid [...]`

## Basic usage
```bash
# show process map
$ pmap $(pidof gedit) | less

0000555af2374000      4K r---- gedit
0000555af2375000      4K r-x-- gedit
0000555af2911000  10868K rw---   [ anon ]
<truncated>
```
