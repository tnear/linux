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

## Create system user
Use `-r, --system` to create a system user instead of a regular user. System users are intended for running services and daemons, not human login.

By default, system accounts do **not** get a home directory (use `-m` to override).

### System users
- UID in range of 1-999
- Passwords do not expire (no password aging policies)
- No login shell. Often combined with `-s /bin/false` or `-s /usr/sbin/nologin` to prevent interactive login.

### Regular users
- UID is 1000+
- Passwords age and eventually expire
