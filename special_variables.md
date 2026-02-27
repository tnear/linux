# Special Variables

Special shell variables.

## Exit status of last command: `$?`
A non-zero value indicates an error. `0` is success.
```bash
$ fake_cmd
$ echo $?
127
```

## Get shell PID: `$$`
```bash
$ echo $$
31515
```

## All positional parameters
`$@` is a special parameter that represents all positional parameters passed to a script or function.

### Iterating example
```bash
# loop through each argument
for arg in "$@"; do
    echo "Processing: $arg"
done

# execute:
./script.sh "hello world" foo "bar baz"
```

### Forwarding all arguments example
```bash
# .zshrc
my_fcn() {
    # call script.sh while forwarding all arguments
    ~/path/to/script.sh "$@"
}
```

## Internal field separator
The internal field separator, `IFS`, is a special shell variable to determine how Bash recognizes word boundaries.

```bash
# set internal field separator to '=' to split strings of the form: 'key=value'
IFS='='

# read 'key' and 'value' from each arg ('key=value').
# because IFS is '=', this splits $arg into 'key' and 'value'
read key value <<< "$arg"
```
