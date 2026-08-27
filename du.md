## du

`du` - disk usage - estimate file space usage

See also: [`df`](df.md)

Syntax: `du [OPTION]... [FILE]...`

## Basic usage

```bash
# `-h, --human-readable` to show size in KB/MB/etc
$ du -h /tmp/vim
20K     /tmp/vim

# `-s, --summarize` to show size of dir + its sub-directories
$ du -sh ~
3.7G    /home/user
```

### Find directories >1+ GB in size

```bash
$ du -h / 2> /dev/null | grep '^[0-9.]+G'
1.4G    /home
3.8G    /usr/share
1.3G    /usr/lib/python3
1.6G    /usr/lib/x86_64-linux-gnu
5.3G    /usr/lib
9.8G    /usr
13G     /
```
