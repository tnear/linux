# keyctl

`keyctl` - key management facility control

See also: [keyrings](keyrings.md)

## Show keys
```bash
# list keys
$ keyctl show

Session Keyring
 26029 --alswrv 1003  1004 keyring: _ses
 93038 --alswrv 1003 65534  \_ keyring: _uid.1003
```

Annotation:
- `Session Keyring`: lists keyrings for current session (`@s`). All keys are tied to this login session.
    - Other keyring types (not shown) include user and process
- `26029`: key ID (unique identifier)
- `--alswrv`: permissions
    - `a`: attribute, `l`: link, `s`: search, `w`: write, `r`: read, `v`: view
    - this means owner can read/write/view key
- `1003`: UID (owner user)
- `1004`: GID (owner group)
- `65534`: `nobody`'s ID. Common default for keyrings
- `\_`: nesting. First keyring contains a second keyring
- `_uid.1003`: user keyring for UID 1003
