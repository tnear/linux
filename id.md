# id

`id` - print real and effective user and group IDs

See also: [`groups`](groups.md), [`getent`](getent.md)

## Get user ID (UID) and groups (GID)
```bash
# get own UID and GID
$ id
uid=1000(kali) gid=1000(kali) groups=1000(kali),4(adm),20(dialout),27(sudo),29(audio),44(video)

# get specified user's UID and GID
$ id daemon
uid=1(daemon) gid=1(daemon) groups=1(daemon)

# get ID-only
$ id -u user
1000
```

## Security context
Use `-Z, --context` to print a user's [security context](se_linux.md#security-context).

```bash
$ id -Z
unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023

# user : role : type : level
```
