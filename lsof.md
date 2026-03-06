# lsof

`lsof` - list open files

## Basic usage
```bash
# -u: list files opened by a particular user
$ lsof -u root

# -c: list files opened by a command (ex: 'cron')
$ lsof -c cron

# -p: list files opened by PID
$ lsof -p <pid>
```
