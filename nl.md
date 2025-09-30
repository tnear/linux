# nl

`nl` - number lines of files

Syntax: `nl [OPTION]... [FILE]...`

## Basic usage
```bash
$ nl /etc/passwd
    1  root:x:0:0:root:/root:/usr/bin/zsh
    2  daemon:x:1:1:daemon:/usr/sbin:/usr/sbin/nologin
    3  bin:x:2:2:bin:/bin:/usr/sbin/nologin
```

## `-v`, `--starting-line-number=NUMBER`
Use the `-v` flag to choose the starting line number.

```bash
# start at line 0
$ nl /etc/passwd -v 0

0   root:x:0:0:root:/root:/bin/bash
1   bin:x:1:1:bin:/bin:/sbin/nologin
```
