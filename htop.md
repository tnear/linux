# htop

`htop, pcp-htop` - interactive process viewer

## Top banner output
- `tasks: <num>`: total number of processes
- `<num> thr`: total number of threads across all processes
- `<num> kthr`: total number of kernel threads
- `<num running`: number of processes currently executing in CPU

### Load average
The load averages indicate the average number of CPU cores used. A value of 1.0 indicates full utilization of one CPU core.

Example load averages:
```
Load average: 1.86 2.05 1.90
# System load averages for:
#   1.86 - last 1 minute
#   2.05 - last 5 minutes
#   1.90 - last 15 minutes
```

## Common flags
- Show processes for a user: `htop -u <user>`
- Show processes with specific IDs: `htop -u <pid>`

## Interactive sort
Click column headers.

## Shortcut keys
See bottom banner for all shortcuts.
- Quit (q)
- Search (F3)
- Kill (F9)
