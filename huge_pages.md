# HugePages

HugePages are a Linux kernel feature that allows the system to allocate memory in large chunks (typically 2MB or 1GB) instead of the default 4KB pages. This improves performance for applications that use large amounts of memory by reducing TLB misses.

## Query hugepage info
This machine has 4 hugepages of size 1 GB (1048567 kB):
```bash
$ grep ^Huge /proc/meminfo
HugePages_Total:       4
HugePages_Free:        0
HugePages_Rsvd:        0
HugePages_Surp:        0
Hugepagesize:    1048576 kB
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
# for 2MB HugePages (set 1024 pages = 2GB)
sudo sysctl -w vm.nr_hugepages=1024

# for 1GB HugePages
sudo sysctl -w vm.nr_hugepages_1GB=4
```

### Method 2: permanent configuration
Add one of these lines to `/etc/sysctl.conf`:
```bash
# for 2MB pages (default size)
vm.nr_hugepages = 1024

# for 1GB pages
vm.nr_hugepages_1GB = 4
```

Apply changes after configuring:
```bash
sudo sysctl --load
```
