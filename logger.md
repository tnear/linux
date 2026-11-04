# logger

`logger` - enter messages into the system log

## Basic usage

The system log is file `/var/log/syslog`.

```bash
# append to system log
$ logger 'test comment'

$ tail -n1 /var/log/syslog
2023-09-22T09:29:57.259242-05:00 user user: test comment

# log output of commands using command substitution
$ logger $(date)
```
