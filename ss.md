SS

ss - socket statistics - another utility to investigate sockets

Replaces 'netstat'.

$ ss
Netid State  Recv-Q Send-Q       Local Address:Port    Peer Address:Port   Process
u_str ESTAB  0      0       /run/user/1000/bus 20569              * 18983
u_str ESTAB  0      0                        * 21885              * 21886

# -a = all
# -t = tcp

# Show all TCP connections:
$ ss -a -t
State      Recv-Q   Send-Q     Local Address:Port     Peer Address:Port     Process
LISTEN     0        4096           127.0.0.1:43963         0.0.0.0:*
LISTEN     0        511            127.0.0.1:43101         0.0.0.0:*
ESTAB      0        0              10.0.2.15:39486    40.71.11.167:https

---