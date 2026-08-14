# factor

`factor` - factor numbers

## Introduction

`factor` uses GMP (GNU Multiple Precision) Arithmetic Library.

```bash
$ ldd $(where factor)
    linux-vdso.so.1 (0x00007fcac9bf5)
    libgmp.so.10 => /lib64/libgmp.so.10 (0x00007fcac9b2e)
    libc.so.6 => /lib64/libc.so.6 (0x00007fcac9800)
    /lib64/ld-linux-x86-64.so.2 (0x00007fcac9bf7)
```

## Basic usage

```bash
$ factor 5040
5040: 2 2 2 2 3 3 5 7

$ factor 123456789
123456789: 3 3 3607 3803

$ factor 1.5
factor: ‘1.5’ is not a valid positive integer
```
