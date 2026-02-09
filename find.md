# find

`find` - search for files in a directory hierarchy

See also: [`xargs`](xargs.md)

## Case sensitive recursive find in pwd (.) for file names containing 'hello' using a glob
```bash
$ find . -name '*hello*'
```

### Regex
Use `-regex` to match more complex patterns. It matches the entire path, not just the file name.

```bash
$ touch file1 file12
$ find . -regex '\./file[0-9][0-9]*' # no '+' support on all versions
./file12
./file1
```

### Symlinks
Use `-L` to follow symlinks.
```bash
find -L /path/to/search -type f
```

## Get number of files with .h or .c extension
```bash
$ find /usr/include -name '*.[hc]' | wc
  466181     1934876     17536397
newlines | word count | characters
```

`find` outputs file paths, so this means there are 8085 files (first col)

## Case insensitive find for file names containing 'hello'
```bash
$ find . -iname '*hello*'
```

## Case insensitive `ls`
To do a case insensitive listing, use `find` with the `-ls` flag.
```bash
$ find /tmp/ -iname '*data*' -ls
2853037   8 -rw-r--r--    1 tnear    wheel   756 Jul 11 09:10 /tmp//MyData.txt
```

## MTIME - modification time
```
+2 = more than 2
-2 = less than 2
2  = exactly 2
```

### Find all files modified within last 1 day
```bash
$ find . -mtime -2
```

### Find all files modified more than 3 days ago
```bash
$ find . -mtime +3
```

## PERM - search file permissions
### Find executable (+x) files:
```bash
$ find . -perm -+x
```

## EXECUTABLE - search for executable files
### Find executable files and directories
```bash
# (directories are executable if they are listable)
$ find /usr/bin -executable | wc -l
3093

# Find executable files only:
$ find /usr/bin -executable -type f | wc -l
3093
```

## SIZE - search file sizes
c = byes suffix
### Find all files larger than 1000 bytes
```bash
$ find . -size +1000c
# Find all files larger than 1 GB:
$ find / -size +1G 2> /dev/null

# Find zero byte files:
$ find . -size 0c
```

## USER - search file owner
```bash
# Find all files owned by 'root':
$ find . -user 'root'
```

## TYPE - search file type
`f` = plaintext, `d` = directory, `l` = symbolic link

```bash
# Find all directories
$ find . -type d

# Find all symbolic links:
$ touch a.txt
$ ln -s a.txt a.lnk
$ find . -type l -ls
2752605   0 lrwxrwxrwx  1 kali  5 Mar 25 16:06 ./a.lnk -> a.txt
```

## MAXDEPTH - stop at a specified recursion depth
```bash
$ find /usr -maxdepth 1
/usr
/usr/games
/usr/local
<...>
```

## -print0 = print name followed by a null byte
This is useful to process file names containing whitespace characters.
```bash
# Often used on conjunction with 'xargs -0'
$ touch 'a 1' 'a\n2'
$ find -print0
../a 1./a\n2

# Use hexdump to see the two null bytes (0x00):
$ find -print0 | hd
2e 00 2e 2f 61 20 31 00  2e 2f 61 5c 6e 32 00     |.../a 1../a\n2.|
```

## EXEC

Syntax:
```bash
# {}: placeholder for the result found
# \; = command delimiter ('\' is used to escape the semicolon)
```

Examples:
```bash
$ find <find_cmd> -exec <exec_cmd> {} \;

# Find zero byte files then call 'ls -la' on each one:
$ find . -size 0c -exec ls -la {} \;

# Simpler syntax using xargs: $ find . -size 0c | xargs ls -la

# Use -exec placeholder to rename files.
# {} is mapped to {}_renamed, thus adding '_renamed' suffix to all file names:
$ touch file1 file2 file3
$ find . -name 'file*' -exec mv {} {}_renamed \;
$ ls
file1_renamed  file2_renamed ...

# Alt syntax using xargs:
# find -name 'file*' | xargs -I{} mv {} {}_renamed

# COMMAND DELIMITER
# Two delimiters exist: \; and +

# \; example:
# Calls grep N times, one for each result: grep result1; grep result2; ...
$ find . -type f -exec grep 'hello' {} \;

# + example:
# Calls grep one time and passes in all results: grep result1 result2 result2 ...
$ find . -type f -exec grep 'hello' {} +
```

## Get lines of code (LOC)
This example gets lines of code for files with a .cpp or .h extension. It uses `-o` to do an OR constraint.

The parentheses need to be escaped because they have a separate meaning in bash.
```bash
$ find . -type f \( -name '*.cpp' -o -name '*.h' \) | xargs wc

  224233  736557 9406531 total
newlines | word count | characters
```

## Get 5 largest (biggest) files in a directory recursively
```bash
find . -type f -printf "%s %p\n" 2> /dev/null | sort -rn | head -n5 | awk '{print $2 " - " $1 " bytes"}'
```

### printf: uses '%s' to get size and %p' to get path. Ex:
```bash
find . -type f -printf "%s %p\n"
478 ./.git/hooks/applypatch-msg.sample
896 ./.git/hooks/commit-msg.sample
```

### `sort -rn`
Sorts by Number in Reverse order

### `awk`
Prints the second field followed by the first field.
