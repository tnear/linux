# read

`read` - read from standard input into shell variables

## Basic usage
```bash
# read from stdin into shell variable MY_VAR
$ read MY_VAR  # type value below:
hello

# print variable
$ echo $MY_VAR
hello

# read random data into shell variable:
$ read RAND < /dev/urandom
echo $RAND  # outputs binary data
```
