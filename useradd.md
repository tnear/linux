# useradd

`useradd` - create a new user or update default new user information

## Basic usage
```bash
# create new user
$ sudo useradd new_user

# view new user
$ grep new_user /etc/passwd
new_user:x:1001:1001::/home/new_user:/bin/sh

# set new_user password
$ sudo passwd new_user

# -m = Create new user with home directory
$ sudo useradd -m new_user
$ ls -d /home/new_user
/home/new_user

# delete this user and their home directory (-r)
$ sudo userdel -r new_user
$ ls -d /home/new_user
ls: cannot access '/home/new_user': No such file or directory
```
