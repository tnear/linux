# free

`free` - Display amount of free and used memory (RAM) in the system

## Human readable (shows units)
Use `-h` to show units on sizes.

```bash
$ free -h

        total     used     free    shared  buff/cache   available
Mem:    7.8Gi    3.0Gi    2.5Gi     192Mi       2.2Gi       4.2Gi
Swap:   1.0Gi       0B    1.0Gi
```

## Show total memory (RAM)
Use `-t, --total` to show a row containing total memory.

```bash
$ free -th
         total   used   free   shared  buff/cache   available
Mem:     503Gi   12Gi  480Gi    496Mi        15Gi       490Gi
Swap:     11Gi     0B   11Gi
Total:   514Gi   12Gi  491Gi
```
