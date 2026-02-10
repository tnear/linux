# echo

`echo` - display a line of text

See also: [`printf`](printf.md)

## Basic usage
```bash
# by default, echo adds a newline
$ echo hello
hello\n

# use `-n` to avoid newline suffix
```bash
$ echo -n hello
hello
```

## Files
### Create file (or overwrite)
```bash
$ echo 'hello' > file.txt
```

### Append to file (>>)
```bash
$ echo 'world' >> file.txt
$ cat file.txt
hello
world
```

### Interpret backslashes
Use the `-e` flag to interpret backslashes. Useful for writing newlines (`\n`) or tabs (`\t`) to a file.

```bash
$ echo 'a\nbc'    # does not insert newline
a\nbc

$ echo -e 'a\nbc' # inserts newline
a
bc
```

## Function logging
Bash uses `echo` to return values. To add logging to a function without impacting its return value, echo to `stderr`.
```bash
# GOOD
function get_value() {
    echo "10"  # returns "10" (as string)
}

# BAD
function get_value() {
    echo 'called get_value'  # side-effects return value
    echo "10"
}

$ ret=$(get_value)
$ echo "$ret"
called get_value
10

# GOOD (log to stderr)
function get_value() {
    # by writing to stderr (>&2), get_value continues to return "10"
    echo 'called get_value' >&2
    echo "10"
}
```
