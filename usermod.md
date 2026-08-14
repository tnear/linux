# usermod

`usermod` - modify a user account

See also: [`userdel`](userdel.md), [`usermod`](usermod.md)

## Add an existing user to a group

```bash
$ sudo usermod -a -G wheel travis
# or, more commonly:
$ sudo usermod -aG wheel travis
```

### Annotation

- `-a`: append
- `-G`: groups
- `wheel`: group name
- `travis`: user

The `wheel` group is a special group on some Linux systems enabling users to use privileged commands such as `sudo`.
