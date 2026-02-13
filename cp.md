# cp

`cp` - copy files and directories

See also: [`mv`](mv.md), [`install`](install.md)

## Basic usage
```bash
# copy file to cwd
$ cp /path/to/file .

# copy file to directory
$ cp file dir/

# copy multiple files to directory
$ cp file1 file2 file3 dir/
```

## Copy recursively
Use `-r, --recursive` to copy recursively. This is useful for copying directories.

```bash
$ cp -r srcDir newDir
```

## Preserve attributes
Use `--preserve=all` to preserve attributes such as mode, ownership, capabilities, and timestamps.

```bash
$ cp --preserve=all path/to/file /new/dir
```
