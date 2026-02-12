# findmnt

`findmnt` - find a filesystem

See also: [`mount`](mount.md)

## List all mounted file systems
By default, it shows a tree structure. Use `findmnt -l` to output as a list.

```bash
$ findmnt
TARGET                        SOURCE     FSTYPE    OPTIONS
/                             /dev/mapper/ocivolume-root
│                                        xfs       rw,relatime,seclabel,at
├─/proc                       proc       proc      rw,nosuid,nodev,noexec,
├─/sys                        sysfs      sysfs     rw,nosuid,nodev,noexec,
│ ├─/sys/fs/selinux           selinuxfs  selinuxfs rw,nosuid,noexec,relatime
```

## List specific mount
Run `findmnt` on the [logical volume](lvs.md) path.
```bash
$ findmnt /dev/vg00/my_app

TARGET      SOURCE                  FSTYPE OPTIONS
/var/my_app /dev/mapper/vg00-my_app ext4   rw,relatime,seclabel,stripe=256
```
