# findmnt

findmnt - find a filesystem

## Find all mounted file systems
By default, it shows a tree structure. Use `findmnt -l` to output as a list.

```bash
$ findmnt
TARGET                        SOURCE     FSTYPE    OPTIONS
/                             /dev/mapper/ocivolume-root
│                                        xfs       rw,relatime,seclabel,at
├─/proc                       proc       proc      rw,nosuid,nodev,noexec,
│ └─/proc/sys/fs/binfmt_misc  systemd-1  autofs    rw,relatime,fd=30,pgrp=
├─/sys                        sysfs      sysfs     rw,nosuid,nodev,noexec,
│ ├─/sys/kernel/security      securityfs securityf rw,nosuid,nodev,noexec,
│ ├─/sys/fs/cgroup            cgroup2    cgroup2   rw,nosuid,nodev,noexec,
│ ├─/sys/fs/bpf               bpf        bpf       rw,nosuid,nodev,noexec,
│ ├─/sys/fs/selinux           selinuxfs  selinuxfs rw,nosuid,noexec,relatime
│ ├─/sys/kernel/debug         debugfs    debugfs   rw,nosuid,nodev,noexec,
│ ├─/sys/kernel/tracing       tracefs    tracefs   rw,nosuid,nodev,noexec,
│ ├─/sys/fs/fuse/connections  fusectl    fusectl   rw,nosuid,nodev,noexec,
│ └─/sys/kernel/config        configfs   configfs  rw,nosuid,nodev,noexec,
├─/dev                        devtmpfs   devtmpfs  rw,nosuid,seclabel,size
│ ├─/dev/shm                  tmpfs      tmpfs     rw,nosuid,nodev,noexec,
│ ├─/dev/pts                  devpts     devpts    rw,nosuid,noexec,relati
│ └─/dev/hugepages            hugetlbfs  hugetlbfs rw,relatime,seclabel,pa
├─/var/oled                   /dev/mapper/ocivolume-oled
│                                        xfs       rw,relatime,seclabel,at
├─/boot                       /dev/sda2  xfs       rw,relatime,seclabel,at
│ └─/boot/efi                 /dev/sda1  vfat      rw,relatime,fmask=0077,
└─/var/lib/nfs/rpc_pipefs     rpc_pipefs rpc_pipef rw,relatime
```
