READ

read — read from standard input into shell variables

# Read from stdin and create MY_VAR env variable:
$ read MY_VAR  # type value below:
hello

# Print newly created variable
$ echo $MY_VAR
hello

# Read random data into environment variable:
$ read RAND < /dev/urandom

---