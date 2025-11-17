# read

`read` — read from standard input into shell variables

## Basic usage
```bash
# read from stdin and create MY_VAR env variable
$ read MY_VAR  # type value below:
hello

# print variable
$ echo $MY_VAR
hello

# read random data into environment variable:
$ read RAND < /dev/urandom
echo $RAND  # outputs binary data
