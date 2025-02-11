# trap

`trap` allows catching signals and executing code when they occur. `trap` is often used for cleanup operations.

## Example

The script below uses `trap`to catch a few signals, including `SIGINT`. If a user presses Ctrl+C (`SIGINT`) while the script is running, the trap callback `cleanup()` will be executed.

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

# create trap. Execute 'callback' when SIGINT, SIGTERM, or EXIT signals are sent
# note that EXIT is sent when the program completes normally
trap cleanup SIGINT SIGTERM EXIT

echo 'Script is running. Press Ctrl+C to exit'
sleep 10000
```

## Resources
- https://www.linuxjournal.com/content/bash-trap-command
