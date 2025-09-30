# lscpu

`lscpu` - display information about the CPU architecture

Common information: CPUs, cache info, NUMA nodes, and known vulnerabilities.

The `Flags` item includes CPU-supported features, such as fpu, mmx, sse, nx.

## Basic usage
```bash
$ lscpu
Architecture:        x86_64
CPU op-mode(s):      32-bit, 64-bit
Address sizes:       39 bits physical, 48 bits virtual
Byte Order:          Little Endian
CPU(s):              4
Vendor ID:           GenuineIntel
Model name:          Intel(R) Core(TM) i7-9750H CPU @ 2.60GHz
L1d cache:           192 KiB (4 instances)
L1i cache:           128 KiB (4 instances)
L2 cache:            5 MiB (4 instances)
L3 cache:            48 MiB (4 instances)
Flags:               fpu vme de pse tsc msr pae mce cx8 apic sep pge cmov
                     clflush mmx fxsr sse sse2 ht syscall nx rdtscp lm
                     xtopology cpuid ssse3 pcid sse4_1 sse4_2 popcnt aes avx
NUMA node0 CPU(s):   0-63,128-191
NUMA node1 CPU(s):   64-127,192-255
```
