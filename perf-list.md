# perf-list

`perf-list` - List all symbolic event types

Help: `man perf list`

## List all events
```bash
$ perf list
List of pre-defined events (to be used in -e or -M):

  alignment-faults                       [Software event]
  bpf-output                             [Software event]
  <...>
```

## List tracepoints
Tracepoints are aninstrumentation mechanism built into the Linux kernel that allow observing kernel behavior with minimal performance impact. Tracepoints are statically defined probe points embedded within the Linux kernel code that can be enabled or disabled dynamically at runtime. When enabled, they provide visibility into kernel operations without requiring kernel modifications or rebuilds.

```bash
$ sudo perf list tracepoint

alarmtimer:alarmtimer_cancel             [Tracepoint event]
block:block_bio_backmerge                [Tracepoint event]
sched:sched_wakeup                       [Tracepoint event]
scsi:scsi_dispatch_cmd_done              [Tracepoint event]
skb:kfree_skb                            [Tracepoint event]
```
