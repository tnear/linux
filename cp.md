# cp

`cp` - copy files and directories

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
