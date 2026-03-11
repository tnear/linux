# lsof

`lsof` - list open files

## File usage

```bash
$ sudo lsof /path/to/socket.sock
COMMAND   PID    USER   FD   TYPE     NODE NAME
conmon     25    root   12u  unix   198950 /proc/self/fd/11/attach
target   1234 testing   82u  unix 17098231 /path/to/socket.sock
```

Use `-t` for terse output (returns PID column only):
```bash
$ sudo lsof /path/to/socket.sock
25
1234
```

## Non-file usage
```bash
# -u: list files opened by a particular user
$ lsof -u root

# -c: list files opened by a command (ex: 'cron')
$ lsof -c cron

# -p: list files opened by PID
$ lsof -p <pid>
```
