# unlink

`unlink` - call the unlink function to remove the specified file

See also: [`rm`](rmd.md)

## Basic usage
Uniquely, `unlink` has no command options.

```bash
# delete a file
unlink filename.txt

# remove a symbolic link
unlink /path/to/symlink
```

## Limitations
`unlink` is a much simpler command than `rm`.

`unlink` does not support removing directories.
```bash
$ unlink my_dir
unlink: cannot unlink 'my_dir': Is a directory
```

`unlink` does not support removing multiple files.
```bash
$ unlink a.txt b.txt
unlink: extra operand 'b.txt'
```
