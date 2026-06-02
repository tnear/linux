# nvme-persistent-event-log

`nvme-persistent-event-log` - Send NVMe persistent event log page request, returns result and log

## Introduction

The Persistent Event Log (PEL) is an NVMe controller-owned history log. It is the SSD firmware's durable audit trail for important events.

It records things like:

- SMART/health snapshots
- power-on/reset events
- hardware errors
- namespace changes
- format start/completion
- sanitize start/completion
- vendor-specific events

This log is retained across resets and power cycles. The NVMe spec says the number of retained events and maximum size are vendor-specific, and `id-ctrl` exposes support/size through fields like `pels`.

## CLI usage

| Actions | Description |
|---------|-------------|
| `action=1` | establish a reporting context and read |
| `action=0` | read more data from action=1 context   |
| `action=2` | release the context                    |
| `action=3` | reserved / invalid in the nvme spec    |

```bash
# release context
$ sudo nvme persistent-event-log /dev/nvme0 --action=2 --log_len=512 >/dev/null
```

## Summarize event log

```bash
# release context (do this first)
$ sudo nvme persistent-event-log /dev/nvme0 --action=2 --log_len=512 >/dev/null

# read context
$ sudo nvme persistent-event-log /dev/nvme0 --action=1 --log_len=5243292 > /tmp/nvme0-pel.txt

# bucket events
$ awk -F': ' '/^Event Type:/ {count[$2]++} END {for (e in count) printf "%8d  %s\n", count[e], e}' /tmp/nvme0-pel.txt | sort -nr

# output
30841  Power-on or Reset Event(0x4)
25566  Change Namespace Event(0x6)
 9518  Format NVM Start Event(0x7)
 9518  Format NVM Completion Event(0x8)
   29  SMART/Health Log Snapshot Event(0x1)
    3  Timestamp Change Event(0x3)
```
