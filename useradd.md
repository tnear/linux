# useradd

`useradd` - create a new user or update default new user information

See also: [`userdel`](userdel.md)

## Basic usage
```bash
# create new user
$ sudo useradd new_user

# view new user
$ grep new_user /etc/passwd
new_user:x:1001:1001::/home/new_user:/bin/sh

# set new_user password
$ sudo passwd new_user
```

## Home directory
Use `-m` to create a home directory for the new user.
```bash
$ sudo useradd -m new_user
$ ls -d /home/new_user
/home/new_user
```

## Delete user and their home directory.
See [`userdel`](userdel.md) for an example.
