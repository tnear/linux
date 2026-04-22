# trap

`trap` allows catching signals and executing code when they occur. `trap` is often used for cleanup operations.

Syntax: `trap callback SIGNAL1 SIGNAL2 ...`

## Basic usage

The script below uses `trap` to catch a few signals. If a user presses Ctrl+C (`SIGINT`) while the script is running, the trap callback `cleanup()` will be executed.

```bash
# file to clean up
FILE='/tmp/tempfile.txt'

# function to clean up
cleanup() {
    echo 'Cleaning up...'
    rm -f '$FILE'
    echo 'Cleanup done. Exiting.'
    exit 0
}

# create trap. Execute 'cleanup()' when SIGINT, SIGTERM, or EXIT signals are sent
# note that EXIT is sent when the program completes normally
trap cleanup SIGINT SIGTERM EXIT

echo 'Script is running. Press Ctrl+C to exit'
sleep 10000
```

### Removing trap handler
Use `trap - <SIGNAL>` to remove a trap if it is no longer needed. This can be useful if execution reaches a certain point where cleanup is no longer required.

```bash
cleanup() {
    echo "cleaning up"
}

# set TERM and EXIT signals
trap cleanup TERM EXIT
echo "trap set"

# remove TERM and EXIT signals
trap - TERM EXIT
echo "trap removed"
```

## Traps are shell-global
Setting a trap inside a function keeps that trap active even after function exits.

```bash
f() {
    trap 'echo cleanup' EXIT
}

f()
# 'cleanup' trap is still active

# unset 'cleanup' trap
trap - EXIT
```

## Resources
- https://www.linuxjournal.com/content/bash-trap-command
