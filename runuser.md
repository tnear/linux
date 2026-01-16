# runuser

`runuser` - run a command with substitute user and group ID

See also: [`su`](su.md)

## Comparison with `su`
- Only the root user can call `runuser`
- `runuser` will not prompt for a password, making it more suitable for scripting

## Basic usage
Use `-u` to specify a user name.

```bash
$ sudo runuser -u nobody whoami
nobody
```

Without root user, `runuser` errors:
```bash
$ runuser -u nobody whoami
runuser: may not be used by non-root users
```
