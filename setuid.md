# setuid

`setuid` - set user identity

`setuid` is a special file permission allowing users to run a program with the file owner's permissions. `setuid` is less granular than `setcap`.

See also: [`chmod`](chmod.md), [`setcap`](setcap.md)

## `passwd`
`/usr/bin/passwd` is a common example where regular users temporarily need root permissions to change their password.

```bash
# Note the 's' permissions flag:
$ ll /usr/bin/passwd
-rwsr-xr-x 1 root root 68248 Nov 11 02:28 /usr/bin/passwd
```

## Setting uid bit
```bash
# set the setuid bit using chmod
$ chmod +s f.txt

# Verify 'S' bit in permissions
$ ll f.txt
-rwSr-Sr-- 1 kali kali 0 Mar 25 16:25 f.txt

# alt syntax: chmod 4xxx f.txt  # 4 denotes setuid
```

### `setuid` as `root` user

```bash
# ensure root owns the file
sudo chown root:root /path/to/app

# add setuid bit (symbolic syntax)
sudo chmod u+s /path/to/app
```
