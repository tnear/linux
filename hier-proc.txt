HIER-PROC

/proc
Includes information on system hardware and processes. /proc is a virtual file system.

/proc/cpuinfo
Detailed hardware information such as # processors and processor speed

/proc/interrupts
Shows how many times an interrupt number (0, 1, 6, 17) ran on a CPU

/proc/meminfo
Detailed memory information

# Many /proc files show as 0 bytes despite having data due to their virtual nature:
$ ls -l /proc/meminfo
-r--r--r-- 1 root 0 /proc/meminfo

$ cat /proc/meminfo | wc -l
53

/proc/<pid>
File representation of process id

/proc/<pid>/fd
All file descriptors in use by a process. 0=stdin, 1=stdout, 2=stderr

---