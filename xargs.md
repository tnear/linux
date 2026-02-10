# xargs

`xargs` - eXtended ARGumentS - build and execute command lines from standard input

`xargs` is often simpler syntax than `find` + `-exec`.

See also: [`find`](find.md)

## Searching files by extension
```bash
# find .c files containing 'int main'
$ find . -name '*.c' | xargs grep 'int main'

# Find .h or .c files in /usr/include containing 'int main'
$ find /usr/include -name '*.[hc]' | xargs grep 'int main'
```

## Using `ls` with `xargs`
```bash
# print detailed listing of zero byte files
$ find . -size 0c | xargs ls -la
-rw-r--r-- 1 kali 0 ./lec1/my_file.txt
-rw-r--r-- 1 kali 0 ./temp_directory/file5.txt
```

# Maximum arguments
Use `-n max-args`.

```bash
# echo 'hello' plus file name, one at a time
$ touch a b
$ ls * | xargs -n1 echo 'hello'
hello a
hello b
```

## Replace string at specified location.
Use `-I` to replace-str. `{}` is a placeholder for string to be replaced.
```bash
# Note: -I implies -n1:
$ touch a b
$ ls * | xargs -I{} cp {} {}.bak
$ ls
a  a.bak  b  b.bak

# Bulk insert into sqlite database:
$ seq 10 | xargs -I{} sqlite3 data.db 'insert into table1 values ({});'
```

## Prevent running when finding 0 results
Use `--no-run-if-empty`. Without this command, `xargs` will run the command with 0 args. For example, `ls` no args lists everything. Therefore, `xargs ls` with no arguments will outputs everything for zero results which produces an unintended result:
```bash
$ touch a b
$ find | grep fake_str | xargs ls  # likely incorrect results
a  b

# To prevent this behavior, use --no-run-if-empty:
$ find | grep fake_str | xargs --no-run-if-empty ls
<no output>
```

## Interactive mode tip
Use `echo` first to see what `xargs` will do. Before removing, use echo to see what command `xargs` will run:
```bash
$ touch a b
$ find . -type f | xargs echo rm
rm ./a ./b
```
