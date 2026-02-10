# SCP

`scp` - OpenSSH secure file copy

See also: [`rsync`](rsync.md)

## Copy file from local to remote machine
```bash
scp file1.txt user@example.edu:/home/user/path/file1.txt
```

## Copy from remote machine to local

This preserves the file name and copies to `pwd`.

Note: this must be run in the **local** machine.
```bash
scp user@example.edu:/home/user/path/file1.txt .
```

## Recursive directory copy
Use `-r` to do a recursive copy.

```bash
# Copy directory `/tmp/d` and all its contents
scp -r /tmp/d user@example.edu:/home/user/d
```

Note: it's often more efficient to [`tar`](tar.md) files first before `scp` (or `rsync`).
