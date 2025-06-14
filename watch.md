# watch

`watch` - execute a program periodically, showing output fullscreen

`watch` runs a command at specified interval.

## Specify interval
Use `-n, --interval` to specify the update interval in seconds. The minimum value is 0.1 seconds. The default is 2 seconds.

Use `Ctrl+C` to cancel.
```bash
# Run 'ps -aux' every 0.5 seconds (default is 2 seconds)
$ watch -n 0.5 'ps -aux'
```

## Watch a process tree in real time
Note: the example does not specify `-n`, so it defaults to updating every 2 seconds.
```bash
$ watch pstree -ahp $(pidof <name>)
```

## Complex command
Wrap long commands in quotes. Escape internal quotes if necessary.
```bash
watch 'ps -aux'
```
