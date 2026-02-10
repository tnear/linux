# cd

`cd` - change the working directory

## Change to home directory
```bash
$ cd
# OR
$ cd ~
```

## Change to previous directory
```bash
$ cd /tmp
$ cd
$ cd -  # this line returns to /tmp
```

## Builtin
`cd` is a shell builtin (not an executable). Each process has its own working directory. One process cannot change another process's cwd.
```bash
$ type cd
cd is a shell builtin

$ command cd
cd: command not found
```
