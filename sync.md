# sync

`sync` - Synchronize cached writes to persistent storage

## When to run `sync`
- If you expect system not to be stable
- After removing an external device (USB, external disk, etc)
- Before running filesystem checks ([`fsck`](fsck.md))

## Basic usage
```bash
# Linux writes to disk occur asynchronously.
# sync forces an immediate write of all cached data to disk.
$ sync
```

## Resources
- https://www.computerhope.com/unix/sync.htm
