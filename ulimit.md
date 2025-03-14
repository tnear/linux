# ulimit

`ulimit` — set or report file size limit

## Core dumps
The `-c` flag specifies core dumps in number of 512-byte blocks.
```bash
# query current value
$ ulimit -c
1000000
```

If the result is `0`, it means core dumps are disabled. Use `ulimit -c unlimited` to allow any size.

```bash
# set unlimited core dump size.
# to persist this, put it in .bashrc/.zshrc/etc
$ ulimit -c unlimited
```

## File descriptor limit
Use `-n` to specify the maximum number of file descriptors that a process can have.

```bash
$ ulimit -n
1024
```
