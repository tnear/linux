TIMEOUT

timeout - run a command with a time limit

Syntax:
$ timeout [OPTION] DURATION COMMAND [ARG]...

# Ping for 3 seconds:
$ timeout 3 ping 8.8.8.8

# -s = send signal. Send SIGKILL to ping after a 2" timeout:
$ timeout -s SIGKILL 2 ping 8.8.8.8
PING 8.8.8.8 (8.8.8.8) 56(84) bytes of data.
64 bytes from 8.8.8.8: icmp_seq=1 ttl=54 time=17.4 ms
64 bytes from 8.8.8.8: icmp_seq=2 ttl=54 time=16.0 ms
zsh: killed     timeout -s SIGKILL 3 ping 8.8.8.8

---