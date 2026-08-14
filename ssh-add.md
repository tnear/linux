# ssh-add

`ssh-add` - adds private key identities to the OpenSSH authentication agent

See also: [`ssh`](ssh.md), [`ssh-agent`](ssh-agent.md)

## Basic usage

See [`ssh-agent`](ssh-agent.md).

### Key management

```bash
# list loaded keys
$ ssh-add -l

# delete specified key
$ ssh-add -d ~/.ssh/id_ed25519

# remove all keys
$ ssh-add -D
```
