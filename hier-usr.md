# hier-usr

`/usr` holds only shareable, read-only data, so that it can be mounted by various machines running Linux.

## `/usr/share`
Contains architecture-independent shareable files

## `/usr/share/dict`
Contains spelling dictionary

```bash
$ grep testing /usr/share/dict/words
attesting
contesting
testing
```

## `/usr/sbin/nologin`
Indicates a system user which does not have a shell and therefore does not support interactive login. `/bin/false` can also be used to achieve this.

## `/usr/bin`
Contains user-level programs. Most applications (ex: `ls`, `ps`, `grep`, etc.) are installed here. This directory is almost always in `$PATH`.
