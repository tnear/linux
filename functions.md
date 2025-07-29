# Functions

Information on shell functions.

## Create a function called name which echoes your username
```bash
$ name() { echo $(whoami); }
$ name
kali
```

## Function arguments
Function arguments are $1, $2, ...:
```bash
hello() {
    echo "Hello, $1 and $2"
    return 101
}

# Call function with space-separated arguments:
$ hello you me
Hello, you and me
```

## Return value (exit code, error code, status code)
Application exit codes are accessed through `$?`.
```bash
# typically, 0 is success and non-zero is failure
echo $?
101
```

## Return values
Only integers can be directly returned. To return strings, use `echo` and command substitution.

```bash
return_string() {
    str='my return value'
    echo "$str" # echo to return the string via stdout
}

# use $(...) to capture stdout via command substitution.
# this returns the string from return_string()
str=$(return_string)
echo "$str" # outputs 'my return value'
```
