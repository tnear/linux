# Hierarchy

`hier` - description of the filesystem hierarchy

Help text: `man hier`

### [`/bin`](hier-bin.md)
Essential binaries. Needed in single user mode and to bring the system up or repair it.

### `/boot`
Contains static files for the boot loader. Holds only the files which are needed during the boot process. Ex: GNU GRUB bootloader.

### [`/dev`](hier-dev.md)
Special or device files. Usually hardware represented as a file.

### [`/etc`](hier-etc.md)
System-wide configuration files, often editable in a text editor.

### `/home`
Home directories for regular users.

### `/lib`
Should hold those shared libraries that are necessary to boot the system and to run the commands in the root filesystem.

### `/lost+found`
Contains items lost in the filesystem. These items are usually chunks of files mangled as a consequence of a faulty disk or a system crash.

### `/media`
Contains mount points for removable media such as CD and DVD disks or USB sticks.

### `/mnt`
Mount point for file systems or devices (ex: CDs, flash drives).

### `/opt`
Optional packages. Often used by programs to dump install data.

### [`/proc`](hier-proc.md)
Includes information on system hardware and processes. /proc is a virtual file system.

### `/root`
The home directory for the root user.

### `/run`
Contains information which describes the system since it was booted. All saved in RAM, not to disk.

### [`/sbin`](hier-sbin.md)
System administration binaries. Intended to be run as ROOT.

### `/srv`
This directory contains site-specific data that is served by this system.

### [`/sys`](hier-sys.md)
This is a mount point for the sysfs filesystem, which provides information about the kernel like /proc, but better structured. Virtual filesystem.

### `/tmp`
Contains temporary files which regularly get deleted. Often configured to be [`tmpfs`](tmpfs.md).

### [`/usr`](hier-usr.md)
Holds only shareable, read-only data, so that it can be mounted by various machines running Linux.

### [`/var`](hier-var.md)
Variable directory. Writable, persistent files. Can be used for logging (see /var/log).

## Resources
- https://granneman.com/tech/linux/thelinuxenvironment/topleveldirectories
