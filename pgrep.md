# pgrep

`pgrep` - look up, signal, or wait for processes based on name and other attributes

See also: [`pidof`](pidof.md)

## Common flags
- `-a`: show full command line
- `-i`: case insensitive match, `pgrep -i '<pattern>'`
- `-l`: also show process name (similar to `ls -l`)

## Find process ID
This finds pid of 'gedit'
```bash
$ pgrep gedit
643415
```

### Regex pattern matching
```bash
# find processes ending with 'sh' (such as zsh/bash)
$ pgrep '.*sh'
10
```

## `pgrep` vs. `pidof`

### `pgrep` summary
- Supports pattern matching
- Supports advanced filtering and detailed output
- Returns one PID per line

### `pidof` summary
- Simpler and faster than `pgrep` because it does not support patterns
- Requires knowing exact process name
- Returns space separated PIDs
