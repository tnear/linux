# sudo

`sudo, sudoedit` — execute a command as another user

## Change to root user
```bash
$ sudo -i

# alt syntax
$ sudo su -
```

## Run command as specified user
Use `-u` to specify user.
```bash
# run command as 'nobody' user
$ sudo -u nobody whoami
nobody
```

## Preserve environment variables
Use `-E` to pass environment variables.
```bash
$ export MY_VAR="hello"
$ sudo -E env | grep MY_VAR  # outputs: "MY_VAR=hello"
```

## Run last command as 'root'
Use [`!!`](!.md) to reload the previous command and prefix with `sudo`.
```bash
$ sudo !!
```

## List sudoers
```bash
# use 'visudo' to modify this file
$ sudo cat /etc/sudoers
```
