# SCP

scp — OpenSSH secure file copy

## Copy file 'file1.txt' from local to remote machine
```
scp file1.txt user@cs.example.edu:/home/user/path/file1.txt
```

## Copy file 'file1.txt' from remote machine to local

*Note: this must be run in the **local** machine.*
```
scp user@cs.example.edu:/home/user/path/file1.txt file1.txt
```

## -r = recursive copy. Copy directory d and all its contents
```
scp -r /tmp/d user@cs.example.edu:/home/user/d
```

Note: it's often more efficient to [`tar`](tar.md) a directory first before `scp`.
