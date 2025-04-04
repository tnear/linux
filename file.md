FILE

file — determine file type
Looks at file's magic number to help determine its type.

Displays metadata about a file. Indicates if file contains debug info or is stripped

$ file a.out
a.out: ELF 64-bit LSB executable, x86-64,  with debug_info, not stripped

$ file readreq.c
readreq.c: C source, ASCII text

$ file /bin/passwd
/bin/passwd: setuid ELF 64-bit LSB pie executable, x86-64, version 1 (SYSV),
dynamically linked, interpreter /lib64/ld-linux-x86-64.so.2,
BuildID[sha1]=<hash>, for GNU/Linux 3.2.0, stripped

---