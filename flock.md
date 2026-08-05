# flock

`flock` - manage locks from shell scripts

See also: [`exec`](exec.md)

## Introduction
`flock` manages advisory locks using files, so you can prevent multiple instances of a script from running the same critical section simultaneously. It's commonly used in cron jobs, deployment scripts, or anywhere you need mutual exclusion.

## Basic usage

Use `-n, --nonblock` to fail instantly instead of waiting for lock.

```bash
# terminal 1
$ flock -n /tmp/mylock.lock -c "echo Acquired lock; sleep 15" || echo "Could not acquire lock — another instance is running"
Acquired lock

# terminal 2 (run while terminal 1's command is still running)
$ flock -n /tmp/mylock.lock -c "echo Acquired lock; sleep 15" || echo "Could not acquire lock — another instance is running"
Could not acquire lock — another instance is running
```

## File descriptor to lock entire file

This is a more common type of usage of `flock` to lock an entire file.

```bash
# Open a lock file and attach to fd=200 (200 chosen arbitrarily).
# (the content of lock files is typically empty)
# note: if file doesn't exist, it gets created
exec 200>/tmp/myscript.lock

# Use flock to lock whatever fd=200 belongs to. If another process
# runs this script while 200 is already held, it errors.
flock -n 200 || { echo "Already running, exiting."; exit 1; }

echo "Doing work..."
sleep 10
echo "Work complete."
# Lock is released automatically when the script exits (FD closes).
# The lock file itself still exists, and should not be removed.
```
