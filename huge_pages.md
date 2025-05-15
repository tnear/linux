# HugePages

HugePages are a Linux kernel feature that allows the system to allocate memory in large chunks (typically 2MB or 1GB) instead of the default 4KB pages. This improves performance for applications that use large amounts of memory by reducing TLB misses.

## Benefits
- Reduced TLB Misses: The TLB is a cache that stores virtual-to-physical address mappings. With larger pages, fewer TLB entries are needed to map the same amount of memory, reducing TLB misses and improving performance.
- Lower Overhead: Managing fewer, larger pages reduces the CPU overhead associated with page table management.

## Query hugepage info
This machine has 4 hugepages of size 1 GB (1048567 kB):
```bash
$ grep ^Huge /proc/meminfo
HugePages_Total:       4
HugePages_Free:        0
HugePages_Rsvd:        0
HugePages_Surp:        0
Hugepagesize:    1048576 kB  # 1 GB
Hugetlb:         4194304 kB
```

Alternate query using `systctl`:
```bash
$ sysctl vm.nr_hugepages
vm.nr_hugepages = 4
```

## Configure hugepages

### Method 1: temporary configuration (until reboot)
```bash
# create 1024 HugePages of size 2 MB (1024 * 2 MB = 2 GB)
sudo sysctl -w vm.nr_hugepages=1024

# create 4 HugePages of size 1 GB
sudo sysctl -w vm.nr_hugepages_1GB=4
```

### Method 2: permanent configuration
Add one of these lines to `/etc/sysctl.conf`:
```bash
# for 2 MB pages (default size)
vm.nr_hugepages = 1024

# for 1 GB pages
vm.nr_hugepages_1GB = 4
```

Apply changes after configuring:
```bash
sudo sysctl --load
```

## `/dev/hugepages`
This directory provides a special interface to the kernel's huge page memory management. These are binary files.

```bash
$ ll /dev/hugepages
.rw-------@ 1.1G root root 14 May 17:51 app_with_huge_pages_0
.rw-------@ 1.1G root root 14 May 17:51 app_with_huge_pages_1
.rw-------@ 1.1G root root 14 May 17:51 app_with_huge_pages_2
.rw-------@ 1.1G root root 14 May 17:51 app_with_huge_pages_3
```
