# test

`test` - check file types and compare values

## Check file existence
The `test` command and `[ ... ]` are interchangeable.

```bash
# test
if test -f /path/to/file; then
    echo 'File exists'
fi

# equivalent bracket syntax (more common)
# (spaces inside '[' and ']' are required)
if [ -f /path/to/file ]; then
    echo 'File exists'
fi

if [ -n "$PATH" ]; then
    echo 'Path is non-empty'
fi
```

## Operators
- `-d`: checks if it is a directory
- `-e`: checks if it exists (any type)
- `-f`: checks if it is a regular file
- `-h`: checks if it is symbolic link
- `-n`: checks non-empty string
- `-x`: checks if it is executable
- `-z`: checks for empty string or unset
