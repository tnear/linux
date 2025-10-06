# redirect

## Echo hello to stdout and hi to stdout AND stderr
```bash
$ bash -c 'echo hello; echo hi 1>&2'
hello
hi
```

## '|&' is shorthand for '2>&1 |'
```bash
# Search stdout AND stderr using '|&':
$ bash -c 'echo hello; echo hi 1>&2' |& grep ^h
hi
hello
```

## Redirect stdout to text file
`stdout` value is `1`, which is implied with `>`.

```bash
$ echo 'hello' > hello.txt
$ echo 'hello' 1> hello.txt  # '1>' is equivalent to '>'
```

## Redirect stderr to text file (2 = stderr)
```bash
$ fake_cmd 2> error.txt
```

## Redirect both stdout and stderr using '&>'.
Note: `'2>&1'` can also be used.
```bash
$ echo 'hello' &> log_and_error.txt
```

## Resources
- https://youtu.be/3f8xjDr789Q
