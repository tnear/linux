# resize2fs

`resize2fs` - ext2/ext3/ext4 file system resizer

See also: [`parted`](parted.md)

## Example

```bash
# 1. Confirm the disk and partition layout.
# Check that sdb is the right disk and that it shows the new, larger size.
lsblk /dev/sdb

# 2. Look at the current partition table.
# Note the partition number (1) and its current end point.
sudo parted /dev/sdb print

# 3. Grow partition 1 so it ends at the end of the disk.
# This changes only the partition boundary. The filesystem inside is untouched.
# (If parted asks about the GPT backup header or "Fix/Ignore", answer Fix.)
sudo parted /dev/sdb resizepart 1 100%

# 4. Tell the kernel about the new partition size (usually automatic, but safe).
sudo partprobe /dev/sdb

# 5. Check the filesystem size BEFORE resizing. It should still show the old size.
df -h /data

# 6. Grow the ext4 filesystem to fill the partition.
# With no size argument, resize2fs expands to the maximum available space.
# This works online, so /data can stay mounted and in use.
sudo resize2fs /dev/sdb1

# 7. Verify. df should now show the larger size.
df -h /data
```
