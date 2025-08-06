# ping

`ping` - send ICMP ECHO_REQUEST to network hosts

## Basic usage
```bash
$ ping google.com
PING google.com (142.251.32.14) 56(84) bytes of data.
64 bytes from ord38s33-in-f14.1e100.net (142.251.32.14): icmp_seq=1 ttl=55 time=17.4 ms
64 bytes from ord38s33-in-f14.1e100.net (142.251.32.14): icmp_seq=2 ttl=55 time=20.1 ms
^C
--- google.com ping statistics ---
2 packets transmitted, 2 received, 0% packet loss, time 1001ms
rtt min/avg/max/mdev = 17.369/18.748/20.127/1.379 ms
```

### Ping specified IP address
```bash
$ ping 127.0.0.1
PING 127.0.0.1 (127.0.0.1) 56(84) bytes of data.
64 bytes from 127.0.0.1: icmp_seq=1 ttl=64 time=0.075 ms
```

### Limit ping count
Use `-c` to limit the ping count. The default behavior runs indefinitely.
```bash
$ ping -c 1 google.com
```

### Ping interval
Use `-i` to specify the ping interval. The default is 1 second. Only root users can specify a value below 0.2 seconds.

```bash
$ ping -i 0.2 -c 5 127.0.0.1

PING 127.0.0.1 (127.0.0.1) 56(84) bytes of data.
64 bytes from 127.0.0.1: icmp_seq=1 ttl=64 time=0.030 ms
64 bytes from 127.0.0.1: icmp_seq=2 ttl=64 time=0.028 ms
64 bytes from 127.0.0.1: icmp_seq=3 ttl=64 time=0.024 ms
64 bytes from 127.0.0.1: icmp_seq=4 ttl=64 time=0.023 ms
64 bytes from 127.0.0.1: icmp_seq=5 ttl=64 time=0.024 ms
```
