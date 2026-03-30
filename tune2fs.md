# tune2fs

`tune2fs` - adjust tunable file system parameters on ext2/ext3/ext4 file systems

## Introduction
Common `tune2fs` operations:
- View filesystem metadata
- Change filesystem settings, such as adjusting reserved space

## List contents

```bash
$ sudo tune2fs -l /dev/mapper/vg00-root
tune2fs 1.46.5 (30-Dec-2021)
Filesystem volume name:   <none>
Last mounted on:          /sysroot
Filesystem UUID:          ed1ef965-d332-41c0-84b3-bb79d6324ee9
Filesystem magic number:  0xEF53
Filesystem revision #:    1 (dynamic)
Filesystem features:      has_journal ext_attr resize_inode dir_index filetype needs_recovery extent 64bit flex_bg sparse_super large_file huge_file dir_nlink extra_isize metadata_csum
Filesystem flags:         signed_directory_hash
Default mount options:    user_xattr acl
Filesystem state:         clean
Errors behavior:          Continue
Filesystem OS type:       Linux
Inode count:              1310720
Block count:              2621440
Reserved block count:     131072
Overhead clusters:        107707
Free blocks:              1030109
Free inodes:              1106892
First block:              0
Block size:               4096
Fragment size:            4096
Group descriptor size:    64
Reserved GDT blocks:      1024
Blocks per group:         32768
Fragments per group:      32768
Inodes per group:         16384
Inode blocks per group:   1024
RAID stripe width:        256
Flex block group size:    16
Filesystem created:       Mon Oct 20 21:10:09 2025
Last mount time:          Tue Jan 27 23:02:02 2026
Last write time:          Tue Jan 27 23:02:02 2026
Mount count:              5
Maximum mount count:      -1
Last checked:             Mon Oct 20 21:10:09 2025
Check interval:           0 (<none>)
Lifetime writes:          17 GB
Reserved blocks uid:      0 (user root)
Reserved blocks gid:      0 (group root)
First inode:              11
Inode size:               256
Required extra isize:     32
Desired extra isize:      32
Journal inode:            8
First orphan inode:       262699
Default directory hash:   half_md4
Directory Hash Seed:      27254100-ffe4-4dda-9a93-4fb1afffb3bc
Journal backup:           inode blocks
Checksum type:            crc32c
Checksum:                 0xde1c8f2a
```
