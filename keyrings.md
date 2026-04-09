# keyrings

`keyrings` - in-kernel key management and retention facility

See also: [`keyctl`](keyctl.md)

## Introduction
Linux keyrings are a kernel feature for securely storing small pieces of sensitive data (keys, tokens, secrets) in memory, with access control and lifecycle management.

## Benefits
- Secure in-kernel storage. Not readable from user-space. Not written to disk
- Controlled sharing between processes and across sessions
- Lifecycle management (keys can expire)
- Integration with kernel subsystems. Keyrings are used by Kerberos, systemd, container runtimes, and more

## Key
The *key* itself consists of:
- blob of data (password, token, etc.)
- metadata (type, permissions, owner, description)

### Types
- `user`: arbitrary user data
- `logon`: credentials (not readable from user-space)
- `keyring`: a container of keys and other keyrings

## Keyring
A *keyring* is a container of keys and other keyrings.

### Types
- thread keyring: per thread
- process keyring: per process
- session keyring: shared across login session
- user keyring: per user

## `keyctl`
See [`keyctl`] for examples of managing keys.
