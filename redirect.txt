REDIRECT

Notes on redirection in bash: https://youtu.be/3f8xjDr789Q

# Echo hello to stdout and hi to stdout AND stderr:
$ bash -c 'echo hello; echo hi 1>&2'
hello
hi

# '|&' is shorthand for '2>&1 |'.
# Search stdout AND stderr using '|&':
$ bash -c 'echo hello; echo hi 1>&2' |& grep ^h
hi
hello

# Redirect stdout to text file (1 = stdout):
$ echo 'hello' > hello.txt
$ echo 'hello' 1> hello.txt  # '1>' is equivalent to '>'

# Redirect stderr to text file (2 = stderr):
$ fake_cmd 2> error.txt

# Redirect both stdout and stderr using '&>'. Note: '2>&1' can also be used:
$ echo 'hello' &> log_and_error.txt

---