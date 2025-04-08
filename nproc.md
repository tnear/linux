# nproc

`nproc` - print the number of processing units available

The `nproc` command prints the number of processors (cores) available to the current process.

## Basic usage

This process has 11 processors available:
```
$ nproc
11
```

This number corresponds to the `CPU(s)` output line of the [`lscpu`](lscpu.txt) command:
```
$ lscpu | grep '^CPU(s)'
CPU(s):              11
```

```bash
# multithreaded build
$ make -j$(nproc)
```

## --all
To show the total number of processors available, use the `--all` flag:

```
$ nproc --all
11
```
