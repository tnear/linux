# netstat

netstat - Network Statistics - Print network connections,
          routing tables, interface statistics, masquerade
          connections, and multicast memberships

Display network connections. Often used for diagnosing problems or determining traffic.

*Note: Deprecated in favor of [ss](ss.md).*

## Common flags
```
-a, --all     -> Show both listening and non-listening sockets
-n, --numeric -> Show numeric addresses
-p, --program -> show process ID (PID)
-t, --tcp     -> show TCP sockets
```

## Basic usage (no flags)
```
$ netstat

Active Internet connections (w/o servers)
Proto Recv-Q Send-Q Local Address           Foreign Address
udp        0      0 192.168.200.128:bootpc  192.168.200.254:bootps
Active UNIX domain sockets (w/o servers)
Proto RefCnt Flags  Type    State      I-Node Path
unix  3      [ ]    DGRAM   CONNECTED  14416  /run/systemd/notify
unix  2      [ ]    DGRAM              15465  /run/systemd/journal/syslog
<truncated>
```

## List all sockets with numeric value and process ID
This is a useful command to find which process ID (PID) is listening on a port number.

```
$ sudo netstat -pant # sudo needed to get PID

Active Internet connections (servers and established)
Proto Recv-Q Send-Q Local Address      Foreign Address  PID/Program name
tcp        0      0 127.0.0.1:65501    0.0.0.0:*        3177369/python3.6
tcp        0      0 127.0.0.1:65500    0.0.0.0:*        3177369/python3.6
tcp        0      0 127.0.0.1:3310     0.0.0.0:*        6651/clamd
tcp        0      0 0.0.0.0:8081       0.0.0.0:*        16605/java
tcp        0      0 0.0.0.0:111        0.0.0.0:*        1/systemd
tcp        0      0 0.0.0.0:22         0.0.0.0:*        7943/sshd
tcp        0      0 127.0.0.1:8080     0.0.0.0:*        8572/python3.6
tcp        0      0 127.0.0.1:9016     0.0.0.0:*        16607/java
tcp        0      0 0.0.0.0:9015       0.0.0.0:*        16607/java
tcp        0      0 0.0.0.0:9011       0.0.0.0:*        16609/java
tcp        0      0 0.0.0.0:9010       0.0.0.0:*        16609/java
tcp        0      0 0.0.0.0:9000       0.0.0.0:*        16605/java
tcp        0      0 0.0.0.0:9100       0.0.0.0:*        16605/java
```
