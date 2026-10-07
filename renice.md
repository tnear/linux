# renice

`renice` - renice - alter priority of running processes

See also: [`nice`](nice.md)

## Basic syntax

```bash
renice [-n] priority [-p|-g|-u] identifier...
```

- `-p` treats the identifiers as process IDs (the default)
- `-g` treats them as process group IDs
- `-u` treats them as usernames (affects all of that user's processes)

## Examples

```bash
# lower the priority to 10 of PID 1234
$ renice 10 -p 1234

# raise the priority to -5 (needs root)
$ sudo renice -5 -p 1234
```
