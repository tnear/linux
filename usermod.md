# usermod

`usermod` - modify a user account

## Add an existing user to a group

```
-a     -> append
-G     -> groups
wheel  -> group name
travis -> user
```

```
$ sudo usermod -a -G wheel travis
(or, more commonly)
$ sudo usermod -aG wheel travis
```

The `wheel` group is a special group on some Linux systems enabling users to use privileged commands such as `sudo`.
