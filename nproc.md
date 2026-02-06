# nproc

`nproc` - print the number of processing units available

The `nproc` command prints the number of processors (cores) available to the current process.

See also: [`make`](make.md)

## Basic usage

This process has 11 processors available:
```bash
$ nproc
11
```

`nproc` corresponds to the `CPU(s)` output line of [`lscpu`](lscpu.md):
```bash
$ lscpu | grep '^CPU(s)'
CPU(s):              11
```

```bash
# multithreaded build using all CPUs
$ make -j$(nproc)
```

## `--all`
To show the total number of processors available, use the `--all` flag:

```bash
$ nproc --all
11
```
