# lslocks

`lslocks` - list local system locks

See also: [`flock`](flock.md)

## Introduction

`lslocks` lists file locks currently known to the Linux kernel.

```bash
$ lslocks
COMMAND         PID  TYPE SIZE MODE  M  PATH
freshclam   2035522 POSIX      WRITE 0  /...
sssd_nss       2232 POSIX      WRITE 0  /...
runcommand     4140 FLOCK      WRITE 0  /...
sendmail       2993 POSIX      WRITE 0  /run/netns...
sssd_nss       2232 POSIX      WRITE 0  /...
rpcbind        2015 FLOCK      WRITE 0  /run/netns...
osqueryd       2074 FLOCK      WRITE 0  /run/netns...
myapp          2417 FLOCK  12K WRITE 0  /tmp/ex.lock

# query specific pid
$ lslocks --pid 4140
```

- `M`: denotes whether locks is mandatory (`0` is advisory)
