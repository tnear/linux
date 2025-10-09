# mkdir

`mkdir` - make directories

## Basic usage
```bash
$ mkdir myNewDir
```

## Create nested directories
Use `-p` for parent to create nested directories in one command.
```bash
$ mkdir -p top/med/bot
$ cd top/med/bot

# Without -p, mkdir errors
$ mkdir top/med/bot
mkdir: cannot create directory 'top/med/bot': No such file or directory

# -p also allows creating a directory if it doesn't already exist:
$ mkdir -p new_dir  # creates new directory
$ mkdir -p new_dir  # does nothing
```

## -m, --mode=MOD
`-m` allows specifying permissions when creating a directory.

```bash
# create directory with full permissions
mkdir -m 777 my_dir
```
