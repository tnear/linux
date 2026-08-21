# fuser

`fuser` - identify processes using files or sockets

See also: [`lsof`](lsof.md)

## Basic usage

Use `-v` for verbose.

```bash
# show users of cwd ('.')
$ fuser -v .
        USER        PID ACCESS COMMAND
/tmp:   kali      1420206 ..c.. zsh

# see who is using Python
$ fuser -v $(where python)
                     USER   PID ACCESS COMMAND
/usr/bin/python3.11: user  1398 ...e. blueman-applet
```
