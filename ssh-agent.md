# ssh-agent

`ssh-agent` - OpenSSH authentication agent

See also: [`ssh`](ssh.md), [`ssh-add`](ssh-add.md)

## Introduction

`ssh-agent` is a background process that holds SSH private-key identities in memory and performs authentication operations for SSH.

### Problem it solves

The problem `ssh-agent` solves is avoiding repeated private-key passphrase entry while keeping the key itself out of every client process.

### Without an agent
1. ssh
1. open private key
1. ask for passphrase
1. decrypt key
1. authenticate

### With an agent
1. ssh-add
1. unlock key once
1. ssh-agent keeps identity available
1. ssh asks agent to sign authentication challenge

## Basic usage

```bash
# start ssh-agent
eval "$(ssh-agent -s)"

# load key
ssh-add ~/.ssh/id_ed25519
```
