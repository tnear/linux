# rm

`rm` - remove files or directories

See also: [`rmdir`](rmdir.md), [`unlink`](unlink)

## Basic usage
```bash
# remove one file
$ rm file.txt
# remove multiple files
$ rm f1 f2 f3
```

## Recursive remove
Use `-r` for a recursive remove. It permits removing non-empty directories
```bash
$ rm -r my_directory
```

## Force remove
Use `-f` to force-remove directory with no prompt. This flag also suppresses errors.

```bash
$ rm -rf my_repository
```
