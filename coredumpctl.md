# coredumpctl

`coredumpctl` - Retrieve and process saved core dumps and metadata

## List core dumps
```bash
coredumpctl list
```

### Query executable name
```bash
# coredumpctl list <name>
coredumpctl list my_binary
```

## Analyze a core dump
Use `coredumpctl dump -o /path/to/bin PID`.

```bash
$ coredumpctl list
Fri 2025-03-14 14:51:24 GMT 180111 SIGSEGV  /tmp/crash/my_crash

# use pid and path from `list` output above
$ coredumpctl dump -o /tmp/crash/my_crash 180111
tnear@[~] $  coredumpctl dump -o /tmp/crash/my_crash 180111
           PID: 180111 (my_crash)
        Signal: 11 (SEGV)
     Timestamp: Fri 2025-03-14 14:51:24 GMT (19min ago)
  Command Line: ./my_crash
    Executable: /tmp/crash/my_crash
```

## Debug a core dump
`coredumpctl` compresses dumps by default.

```bash
# Debug a specific core dump by PID
coredumpctl debug 180111
```

```bash
# export an uncompressed dump
coredumpctl dump 180111 > /tmp/core.dump
# debug dump with gdb
gdb /path/to/your/program /tmp/core.dump
```
