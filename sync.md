# sync

`sync` - Synchronize cached writes to persistent storage

## Basic usage
```bash
# Linux writes to disk occur asynchronously.
# sync forces an immediate write of all cached data to disk.
# Run sync if you anticipate the system to be unstable:
$ sync
```

## Resources
- https://www.computerhope.com/unix/sync.htm
