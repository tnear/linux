# pidof

`pidof` - find the process ID of a running program

See also: [`pgrep`](pgrep.md)

## Get all process IDs of VSCode
```bash
$ pidof code
252444 252433 252163 252150 252103
```

## Kill all processes of specified name
```bash
pidof process_name | xargs kill

# sigkill
pidof process_name | xargs kill -9
```

## Verify number of TCP connections a PID has
```bash
sudo netstat -tnp | grep $(pidof my_app) | wc -l
128
```

## `pgrep` vs. `pidof`

### `pgrep` summary
- Simpler and faster than `pgrep` because it does not do regex
- Requires knowing exact process name
- Returns space separated PIDs

### `pgrep` summary
- Supports pattern matching
- Supports advanced filtering and detailed output
- Returns one PID per line
