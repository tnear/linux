# SCP

`scp` - OpenSSH secure file copy

See also: [`rsync`](rsync.md), [`sftp`](sftp.md)

## Copy file from local to remote machine
```bash
scp file1.txt user@example.edu:/home/user/path/file1.txt
```

## Copy from remote machine to local

This preserves the file name and copies to `cwd`.

Note: this must be run in the **local** machine.
```bash
scp user@example.edu:/home/user/path/file1.txt .
```

## Recursive directory copy
Use `-r` to do a recursive copy.

```bash
# Copy directory `/tmp/dir` and all its contents
scp -r /tmp/dir user@example.edu:/home/user/dir
```

Note: it's often more efficient to [`tar`](tar.md) files first before copying.
