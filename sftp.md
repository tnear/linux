# sftp

`sftp` — OpenSSH secure file transfer

See also: [`scp`](scp.md), [`rsync`](rsync.md)

## Local vs. remote
- Local: your local machine
- Remote: remote server connected to

Most commands work similarly to bash. Use `l` prefix to act locally:

| Remote | Local |
|--------|-------|
| `pwd`  | `lpwd`|
| `ls`   | `lls` |
| `cd`   | `lcd` |

## Copy local file to remote

Use sftp's `put` command.

```bash
# copy to pwd
sftp> put sftp_ex.txt
Uploading sftp_ex.txt to /home/tnear/sftp_ex.txt
sftp_ex.txt      100%   12     0.2KB/s   00:00

# note: there is no way to 'cat' a file with sftp
```

## Copy remote file to local

Use sftp's `get` command.

```bash
sftp> get remote_file.txt
Fetching /home/tnear/remote_file.txt to remote_file.txt
remote_file.txt                        100%   17     0.1KB/s   00:00

local> cat remote_file.txt
data from remote
```

## Miscellaneous commands

```bash
# list commands
sftp> hello

# exit sftp session
sftp> bye
```

## scp vs rsync vs sftp

| Tool | When to use | Example |
|---|---|---|
| `scp` | Quick copy when you know the source and destination paths. | `scp file.txt user@host:~/` |
| `rsync` | Repeatedly copy directories, transferring only changes. | `rsync -av ./project/ user@host:~/project/` |
| `sftp` | Browse remote directories and upload/download interactively. | `sftp user@host` |
