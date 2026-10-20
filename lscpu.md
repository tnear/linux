# lscpu

`lscpu` - display information about the CPU architecture

Common information: CPUs, cache info, NUMA nodes, instruction sets, and known vulnerabilities.

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

## Instruction sets

SSE and AVX are sets of instructions that a CPU can execute. They add instructions that let the CPU work on several numbers at once. For example, instead of adding four pairs of numbers separately, one instruction can add all four pairs together.

| Instruction set | Year | Max vector width | Main advance |
|---|---|---|---|
| SSE | 1999 | 128 bits | Process several numbers together |
| SSE2 | 2000 | 128 bits | Add integer and higher-precision arithmetic |
| SSE4.2 | 2008 | 128 bits | Add text and checksum operations |
| AVX | 2011 | 256 bits | Process more numbers together |
| AVX2 | 2013 | 256 bits | Extend wider processing to integers |
| AVX-512 | 2016 | 512 bits | Further expand width and operations |
