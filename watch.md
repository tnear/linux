WATCH

watch - execute a program periodically, showing output fullscreen
Run command at specified interval

# -n, --interval = update interval in seconds

# Run 'ps -aux' every 3 seconds (default is 2 seconds) (Ctrl+C to cancel):
$ watch -n3 'ps -aux'

# Watch a process tree in real time:
$ watch pstree -ahp $(pidof <name>)

---