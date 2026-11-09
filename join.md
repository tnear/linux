# join

`join` - join lines of two files on a common field

## Basic usage
```bash
$ head file*.txt
==> file1.txt <==
1 test1
2 test2
3 test3
==> file2.txt <==
2 user2
3 user3
4 user4

# join on first field
$ join file1.txt file2.txt
2 test2 user2
3 test3 user3
```
