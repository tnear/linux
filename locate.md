# locate

`locate` - find files by name

See also: [`find`](find.md), [`updatedb`](updatedb.md)

## Introduction
`locate` does not search the filesystem. Instead, it uses a previously built database. This makes `locate` very fast. The database is refreshed periodically.

### Limitations
`locate` sacrifices accuracy for speed:
- Newly created files might not appear until database is refreshed
- Deleted files might still appear temporarily

## Basic usage
```bash
# locate file name
$ locate terminal.txt
/home/user/linux/terminal.txt
/usr/share/vim/vim90/doc/terminal.txt

# use -c for count
$ locate -c sqlite
249

# ignore case
$ locate --ignore-case my_file
```

## Additional usage

```bash
# database information
$ locate --statistics
Database /var/lib/mlocate/mlocate.db:
        108816 directories
        949646 files
        119801244 bytes in file names
        34163984 bytes used to store database
```
