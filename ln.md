# ln

`ln` - make links between files

See also: [`readlink`](readlink.md)

## Hard link
Associate the file name with the i-node. Creating a hard link increments reference count of i-node.

### Create hard link
```bash
# syntax
$ ln <orig file path> <new path>

$ touch a.txt
$ ll a.txt
-rw-r--r-- 1 user Aug 17 a.txt

# create hard link
$ ln a.txt aLink.txt
```

### List files and include i-node number (-i)
```bash
# Note how they share the i-node number
$ ll -i a*.txt
2754 -rw-r--r-- 2 user aLink.txt
2754 -rw-r--r-- 2 user a.txt
```

## Soft (symbolic) link
A soft link creates a special shortcut file (like Windows). Soft links use pathname resolution to store a path to file. A symlink to an existing file will fail if the original file is moved or renamed.

### Create symlink
Use `-s, --symbolic` to create a symbolic link.

```bash
$ ln -s <existing_file_or_dir> <new_path>
$ ln -s a.txt aLink.txt
```

### List soft links
```bash
# Note the 'l' permissions and arrow (->) to the original file
$ ll -i a*.txt
1712 -rw-r--r-- 1 user a.txt
1713 lrwxrwxrwx 1 user aLink.txt -> a.txt

$ rm a.txt   # breaks symlink
```
