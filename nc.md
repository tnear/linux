# nc

`nc` - netcat -TCP/IP swiss army knife

Utility which reads and writes data across network connections.
Uses TCP or UDP protocols. Note: executable is 'ncat.exe' on Windows.

`stdin` is sent to host and `stdout` is received

## Basic usage
```bash
$ nc <options> <host> <port>
```

### Read from host ip 33.173.133.43, port 9999
```bash
$ nc 33.173.133.43 9999
```

### Read web page source
```bash
# Note: ^M = Ctrl+V + Enter key. This produces carriage return required by HTTP:
$ nc www.google.com 80
GET / HTTP/1.1^M
Host: www.google.com^M
^M

# Alt syntax (without ^M):
$ printf 'GET / HTTP/1.1\r\nHost: www.google.com\r\n\r\n' | nc google.com 80
```

Transferred data is NOT encrypted (unlike with SSH).

## Server command to listen for a file
```bash
$ nc -l -p 1234 > file.txt
```

- `-l`: listen mode for inbound connects. Often used with -p flag.
- `-p`: port number to receive data
- `-v`: verbose (-vv for additional verbosity)
- `-e`: specifies a file name to execute after connect, ex: `nc -e /bin/bash`
- `file.txt`: file to listen for

```bash
# Client command to send file to server.
# Note how port number and file name are same as above:
$ nc <addr> 1234 < file.txt
```
