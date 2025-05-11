# hier-sys

The `/sys` directory is a virtual filesystem called `sysfs` that provides a structured interface to kernel data structures, device information, and configuration options.

## `/sys/fs`

This directory contains filesystem-specific information and controls. System administrators can tune parameters here without rebooting.

### `/sys/fs/cgroup`
Controls the cgroup (control groups) system, which allows limiting and isolating resources such as CPU time, system memory, and network bandwidth.

- cgroups are hierarchical. Child cgroups inherit certain attributes from their parent cgroup.
- a *subsystem* represents a single resource, such as CPU time or memory.
- `/sys/fs/cgroup/cgroup.procs`: contains a list of PIDs assigned to that cgroup, one PID per line. Writing a PID to this file adds that process into the cgroup.

### Managing cgroups
```bash
# /sys/fs/cgroup is the root cgroup directory (it may need to be mounted)

# create new directory for cgroup
sudo mkdir /sys/fs/cgroup/cpu/my_cpu_group

# set resource limits
sudo echo 512000 > /sys/fs/cgroup/cpu/my_cpu_group/cpu.shares
sudo echo 10000000 > /sys/fs/cgroup/memory/my_cpu_group/memory.limit_in_bytes

# add processes by appending their PID to a file called 'cgroup.procs'
sudo echo 12345 > /sys/fs/cgroup/cpu/my_cpu_group/cgroup.procs

# check cgroups of a running process.
# each line follows this format:
# hierarchy-ID:controller-list:cgroup-path
# /proc/<pid>/cgropu
$ cat /proc/3299971/cgroup       
0::/user.slice/user-1003.slice/session-1466.scope
```

## Resources
- https://medium.com/@weidagang/linux-beyond-the-basics-cgroups-f157d93bd755
