# mv

`mv` - move (rename) files

See also: [`cp`](cp.md)

## Basic usage
```bash
# rename file
$ mv oldName newName

# move file to directory
$ mv file.txt dir/

# move directory into /tmp
$ mv my_dir /tmp

# move multiple files to directory
$ mv file1 file2 file3 dir/

# rename directory
$ mv oldDir newDir
```

### Prompt to overwrite
Use `-i, --interactive` to prompt to overwrite if destination exists.
```bash
$ mv -i a.txt b.txt
mv: overwrite 'b.txt'?
```
