# rmdir

`rmdir` - remove empty directories

## Basic usage
```bash
# Remove empty directory:
$ rmdir myEmptyDir

# rmdir errors when directory is not empty:
$ rmdir nonEmptyDir
rmdir: failed to remove 'nonEmptyDir': Directory not empty
```
