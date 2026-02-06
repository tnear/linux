# hier-etc

## `/etc`
System-wide configuration files, often editable in a text editor.

## `/etc/default/grub`
Configuration file for GRUB bootloader. Used to modify `/proc/cmdline`.

### Modify `/proc/cmdline`
See [`hier-proc`](hier-proc.md)

## `/etc/environment`
A system-wide configuration file used by all users. Requires administrator privileges to modify.

## `/etc/fstab`
File Systems TABle. Used by [`mount`](mount.md)

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

## `/etc/login.defs`
Defines user ID and group ID ranges, such as `UID_MIN=1001`, `UID_MAX=60000`, `SYS_UID_MIN=201`, `SYS_UID_MAX=999`.

## `/etc/os-release`
Displays information about the operating system release version.

```bash
NAME="Oracle Linux Server"
VERSION="9.4"
ID="ol"
ID_LIKE="fedora"
VERSION_ID="9.4"
PLATFORM_ID="platform:el9"
```

## `/etc/passwd`
Accounts, user IDs, and home directories.

## `/etc/shadow`
Hashed passwords. Root-only file access.

## `/etc/sudoers`
Configuration file defining who can run what commands as which user (often `root`).
