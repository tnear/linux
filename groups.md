# groups

`groups` - print the groups a user is in

See also: [`id`](id.md), [`getent`](getent.md)

## Display your groups
```bash
$ groups
my_user sudo audio video wheel bluetooth scanner
```

## Display groups of another user
```bash
$ groups mgr
mgr : mgr adm systemd-journal
```
