# sudo

`sudo, sudoedit` — execute a command as another user

## Change to root user
```bash
# (alt syntax: $ sudo su -)
$ sudo -i
```

## Run commands as root
```bash
$ sudo apt install <pkg_name>

# -u = run command as a specified user
$ sudo -u nobody whoami
nobody

# preserve your environment variables using -E
$ export MY_VAR="hello"
$ sudo -E env | grep MY_VAR  # outputs: "MY_VAR=hello"
```

### Run last command as 'root'
Use `!!` to reload the previous command and prefix with `sudo`.
```bash
$ sudo !!
```

## List sudoers
```bash
$ sudo cat /etc/sudoers
```
