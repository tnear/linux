# gcore

`gcore` - Generate a core file of a running program

See also: [`gdb`](gdb.md)

## Basic usage
`gcore` creates a core dump of a process without killing it. This core dump can be inspected with `gdb`.

`gcore` is useful for a hung process.

```bash
# creates 'core.XXXX'
$ gcore <pid>

# open core with gdb
$ gdb /path/to/app core.XXXX
```
