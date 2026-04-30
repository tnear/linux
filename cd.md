# cd

`cd` - change the working directory

See also: [`pwd`](pwd.md)

## Basic usage
```bash
# change to home directory
$ cd
# OR
$ cd ~

# change to previous directory
$ cd /tmp
$ cd /sys  # change away
$ cd -  # return to /tmp

# change to another user's home directory
$ cd ~other_user  # equivalent: cd /home/other_user
```

## Builtin
`cd` is a shell builtin (not an executable). Each process has its own working directory. One process cannot change another process's cwd.
```bash
$ type cd
cd is a shell builtin

$ command cd
cd: command not found
```
