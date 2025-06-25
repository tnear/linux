## du

`du` - disk usage - estimate file space usage

See also: [`df`](df.txt)

Syntax:

`du [OPTION]... [FILE]...`

## -h, --human-readable
The `-h` flag shows file size in KB, MB, GB, TB.

```
$ du -h /tmp/vim
20K     /tmp/vim
```

## -s, --summarize
The `-s` flag is useful for querying the size of a directory (and its sub-directories).

```
$ du -sh ~
3.7G    /home/kali
```

## Find directories >1+ GB in size (ignoring permission errors)
```
$ du -h / 2> /dev/null | grep '^[0-9.]+G'
1.4G    /home
3.8G    /usr/share
1.3G    /usr/lib/python3
1.6G    /usr/lib/x86_64-linux-gnu
5.3G    /usr/lib
9.8G    /usr
13G     /
```
