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
# (spaces around '[' and ']' are required)
if [ -f /path/to/file ]; then
    echo 'File exists'
fi
```

## Operators
- `-f`: checks if it is a regular file
- `-d`: checks if it is a directory
- `-e`: checks if it exists (any type)
- `-x`: checks if it is executable
- `-h`: checks if it is symbolic link
