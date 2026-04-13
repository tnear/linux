# sudo

`sudo, sudoedit` - execute a command as another user

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
Use `-E, --preserve-env` to pass environment variables. This is useful when running scripts as a different user because `export` alone isn't enough to make them available.

```bash
$ export MY_VAR="hello"
$ sudo -E env | grep MY_VAR  # outputs: "MY_VAR=hello"
```

## Rerun previous command as `root`
Use [`!!`](!.md) to reload the previous command and prefix with `sudo`. See [`!`](!.md) for more information.

```bash
$ sudo !!
```

## List sudoers
```bash
# use 'visudo' to modify this file
$ sudo cat /etc/sudoers
```

## Avoid user prompts
Use `-n, --non-interactive` to avoid user prompts, such as for a password.

## List commands a user can run
Use `-l, --list` to list what commands a user can run. Useful for checking if a user is a `sudoer`.

```bash
$ sudo -l -U my_user
```
