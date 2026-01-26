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

## Quotes
Many shell operators and command substitutions need to be wrapped in quotes
```bash
# | requires quotes
watch 'ps -aux | grep python'

# command substitution also requires quotes
watch 'echo "Time: $(date)"'
```
