# ldd

`ldd` - list dynamic dependencies - print shared object dependencies

## Basic usage

```bash
$ whereis grep
grep: /usr/bin/grep

$ ldd /usr/bin/grep
        linux-vdso.so.1 (0x00007fff139df000)
        libpcre2-8.so.0 => /lib/x86_64-linux-gnu/libpcre2-8.so.0 (0x00007f3700fdc000)
        libc.so.6 => /lib/x86_64-linux-gnu/libc.so.6 (0x00007f3700dfb000)
        /lib64/ld-linux-x86-64.so.2 (0x00007f37010d3000)
```

## Verbose
Use `-v` for additional information such as symbol versioning.

```bash
$ ldd -v /usr/bin/grep
linux-vdso.so.1 (0x00007ffdf75e9000)
libpcre.so.1 => /lib64/libpcre.so.1 (0x00007f4d7d69c000)
libsigsegv.so.2 => /lib64/libsigsegv.so.2 (0x00007f4d7d696000)
libc.so.6 => /lib64/libc.so.6 (0x00007f4d7d48e000)
/lib64/ld-linux-x86-64.so.2 (0x00007f4d7d759000)

Version information:
/usr/bin/grep:
        libc.so.6 (GLIBC_2.2.5) => /lib64/libc.so.6
        libc.so.6 (GLIBC_2.3) => /lib64/libc.so.6
/lib64/libpcre.so.1:
        libc.so.6 (GLIBC_2.14) => /lib64/libc.so.6
        libc.so.6 (GLIBC_2.3.4) => /lib64/libc.so.6
```
