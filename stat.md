# stat

`stat` - display file or file system status

Syntax: `stat [OPTION]... FILE..`

## Basic usage
```bash
# display information about an empty file
$ touch a
$ stat a
  File: a
  Size: 0        Blocks: 0          IO Block: 4096   regular empty file
Device: 8,1     Inode: 2752675     Links: 1
Access: (0644/-rw-r--r--)  Uid: ( 1000/    kali)   Gid: ( 1000/    kali)
Access: 2023-03-26 15:30:21.635831143 -0500
Modify: 2023-03-26 15:30:21.635831143 -0500
Change: 2023-03-26 15:30:21.635831143 -0500
 Birth: 2023-03-26 15:30:21.635831143 -0500
```

## Common flags
Use `-f` (file system) to display status about file system where a given file or directory resides instead of about the file itself.
```bash
$ mkdir myDir
$ stat -f myDir
  File: "myDir"
    ID: 62036cac918f8226 Namelen: 255     Type: ext2/ext3
Block size: 4096       Fundamental block size: 4096
Blocks: Total: 20520787   Free: 12880753   Available: 11826866
Inodes: Total: 5251072    Free: 4504871
```
