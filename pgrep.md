# pgrep

`pgrep` - look up, signal, or wait for processes based on name and other attributes

See also: [`pidof`](pidof.md)

## Common flags
- `-a`: show full command line
- `-c`: print count (similar to `grep -c`)
- `-f, --full`: search full command line string (default is only process name)
- `-i`: case insensitive match, `pgrep -i '<pattern>'`
- `-l`: also show process name (similar to `ls -l`)
- `-P, --parent`: only match child processes
- `-u`: filter by user, ex: `grep -u <username_or_uid>`
- `-x`: match *exact* process name (default behavior is substring)

## Querying process ID
This finds PIDs of processes with exact name `bash`.
```bash
$ pgrep -x bash
18096
643415
```

### Regex pattern matching
```bash
# find process names ending with '.sh' (such as zsh/bash)
$ pgrep '\.*sh'
10
115

# use -f to search entire command line string
$ pgrep -f 'my_pattern'
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
