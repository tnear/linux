# last

`last` - show a listing of last logged in users

## Show most recently logged in users
```bash
$ last
<USER>   <CONNECTION> <WHERE>          <DATE>             <LOGOUT TIME>
kali     tty7         :0               Wed Apr 12 19:28   gone - no logout
reboot   system boot  6.1.0-kali7-amd6 Wed Apr 12 19:27   still running
abc1234  pts/337      10.105.230.180   Thu Apr 11 16:29 - 16:35  (00:05)
```

## Show one user's history
```bash
last username
```

## Show reboot history
```bash
last reboot
```
