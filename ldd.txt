LDD

ldd - list dynamic dependencies - print shared object dependencies

$ whereis grep
grep: /usr/bin/grep

$ ldd /usr/bin/grep
        linux-vdso.so.1 (0x00007fff139df000)
        libpcre2-8.so.0 => /lib/x86_64-linux-gnu/libpcre2-8.so.0 (0x00007f3700fdc000)
        libc.so.6 => /lib/x86_64-linux-gnu/libc.so.6 (0x00007f3700dfb000)
        /lib64/ld-linux-x86-64.so.2 (0x00007f37010d3000)

---