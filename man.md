# man

`man` - an interface to the system reference manuals

## Open manual page
The section number is in top left: CD(1POSIX)
```
$ man cd
```

## Explicit section number (needed for disambiguation)
```
$ man 1 cd
$ man 2 mkdir
```

## Specify pager
Use `-P <pager>` to use a specified pager.

```
# output with cat and filter contents
$ man -P cat socket | grep name
76:     correspondents named in send(2) calls.  Datagrams are generally received
128:     getsockname(2), getsockopt(2), ioctl(2), listen(2), read(2), recv(2),
```

Another example which specifies the section number.
```
$ man -P cat 7 socket | grep name
```
