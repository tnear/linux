# hier-user

## `/usr`
Holds only shareable, read-only data, so that it can be mounted by various machines running Linux.

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
