# pidof

`pidof` - find the process ID of a running program

See also: [`pgrep`](pgrep.md)

## Get all process IDs of an application name
```bash
$ pidof code
252444 252433 252163 252150 252103
```

### Kill all processes of specified name
```bash
pidof process_name | xargs kill

# sigkill
pidof process_name | xargs kill -9
```

## `pgrep` vs. `pidof`

See [`pgrep`](pgrep.md#pgrep-vs-pidof).
