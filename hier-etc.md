# hier-etc

## `/etc`
System-wide configuration files, often editable in a text editor.

## `/etc/environment`
A system-wide configuration file used by all users. Requires administrator privileges to modify.

## `/etc/default/grub`
Configuration file for GRUB bootloader. Used to modify `/proc/cmdline`.

### Modify `/proc/cmdline`
See [`hier-proc`](hier-proc.md)

## `/etc/fstab`
File Systems TABle. Used by `mount`.

## `/etc/groups`
A group file which defines the groups on a system.

Format: `<group_name>:<unused password>:<gid>:<group_list>`

```bash
$ cat /etc/group
# Group Database
nobody:*:-2:
wheel:*:0:root,tnear
daemon:*:1:root
<truncated>
```

## `/etc/os-release`
Displays information about the operating system release version.

```bash
NAME="Oracle Linux Server"
VERSION="9.4"
ID="ol"
ID_LIKE="fedora"
VERSION_ID="9.4"
PLATFORM_ID="platform:el9"
PRETTY_NAME="Oracle Linux Server 9.4"
CPE_NAME="cpe:/o:oracle:linux:9:4:server"
```

## `/etc/passwd`
Accounts, user IDs, and home directories.

## `/etc/shadow`
Hashed passwords. Root-only file access.

