# hier-etc

## `/etc`
System-wide configuration files, often editable in a text editor.

## `/etc/fstab`
File Systems TABle. Used by `mount`.

## `/etc/groups`
A group file which defines teh groups on a system.

Format: `<group_name>:<unused password>:<gid>:<group_list>`

```
$ cat /etc/group
# Group Database
nobody:*:-2:
wheel:*:0:root,tnear
daemon:*:1:root
<truncated>
```

## `/etc/passwd`
Accounts, IDs, and home directories.

## `/etc/shadow`
Hashed passwords. Root-only file access.

## `/etc/environment`
A system-wide configuration file used by all users. Requires administrator privileges to modify.
