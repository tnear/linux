# ss

ss - socket statistics - another utility to investigate sockets

*Prefer `ss` over [`netstat`](netstat.md).*

## Basic usage
```
$ ss

Netid State  Recv-Q Send-Q       Local Address:Port    Peer Address:Port   Process
u_str ESTAB  0      0       /run/user/1000/bus 20569              * 18983
u_str ESTAB  0      0                        * 21885              * 21886
```

## Common flags
```
-a, --all     -> Show both listening and non-listening sockets
-n, --numeric -> Show numeric addresses
-p, --program -> show process ID (PID)
-t, --tcp     -> show TCP sockets
```

## List all sockets with numeric value and process ID
Useful for finding which process ID (PID) is listening on a port number (ex: 9100).

```
$ sudo ss -pant | grep 9100

LISTEN     0   4096   0.0.0.0:9100      0.0.0.0:*     users:(("java",pid=16605,fd=60))
CLOSE-WAIT 1   0    127.0.0.1:48636   127.0.0.1:9100  users:(("java",pid=16607,fd=42))
ESTAB      0   0    127.0.0.1:9100    127.0.0.1:33204 users:(("java",pid=16605,fd=314))
ESTAB      0   0    127.0.0.1:33204   127.0.0.1:9100  users:(("java",pid=16607,fd=54))
```
