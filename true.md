# true

`true` - do nothing, successfully

See also: [`false`](false.md)

## Basic usage
```bash
# Run true and show success response (0):
$ true
$ echo $?
0
```

## Force exit status to be zero
```bash
# If 'rmdir' fails, 'true' executes which has a 0 response:
$ rmdir <my_dir> || true
```
