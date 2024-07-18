# id

`id` - print real and effective user and group IDs

## Get your user ID (UID) and groups (GID)
```
$ id
uid=1000(kali) gid=1000(kali) groups=1000(kali),4(adm),20(dialout),27(sudo),29(audio),44(video)
```

## Get specified UID and GID
```
$ id daemon
uid=1(daemon) gid=1(daemon) groups=1(daemon)
```

## Get ID-only
Use the `-u`  flag to get a user ID.
```
$ id -u tnear
1000
```
