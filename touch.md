# touch

`touch` - change file timestamps

Syntax: `touch [OPTION]... FILE...`

## Basic usage
```bash
# Create empty file
$ touch empty_file.txt

# Update timestamp of existing file
$ touch existing_file.txt

# Create three empty files
$ touch a b c
```

## Use an existing file's time instead of the current time
Use `-r, --reference` to reference an existing file's timestamp.

```bash
# Set destFile timestamp to srcFile's timestamp
$ touch -r srcFile destFile

# Hide changes to /etc/passwd by matching its timestamp with /etc/shadow
$ touch -r /etc/shadow /etc/passwd
```
