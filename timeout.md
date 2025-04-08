# timeout

`timeout` - run a command with a time limit

## Syntax
```
$ timeout [OPTION] DURATION COMMAND [ARG]...
```

### Ping for 3 seconds
```bash
$ timeout 3s ping 8.8.8.8
$ timeout 3 ping 8.8.8.8  # equivalent syntax, seconds is default unit

# other suffixes
$ timeout 1m <command>
$ timeout 0.5h <command>
```

### Send SIGKILL to ping after a 2 second timeout
Use `-s` to send a signal.
```bash
$ timeout -s SIGKILL 2s ping 8.8.8.8
PING 8.8.8.8 (8.8.8.8) 56(84) bytes of data.
64 bytes from 8.8.8.8: icmp_seq=1 ttl=54 time=17.4 ms
64 bytes from 8.8.8.8: icmp_seq=2 ttl=54 time=16.0 ms
zsh: killed     timeout -s SIGKILL 3 ping 8.8.8.8
```

## Use in conditional
```bash
if timeout 5s slow_command; then
    echo 'Command completed within time limit'
else
    echo 'Command timed out'
fi
```
