# groupdel

`groupdel` - delete a group

See also: [`groupadd`](groupadd.md), [`getent`](getent.md), [`groupmod`](groupmod.md)

## Basic usage

```bash
# create new group
$ sudo groupadd my_group
$ getent group my_group
my_group:x:1003:

# delete group
$ sudo groupdel my_group
$ getent group my_group  # no output
```
