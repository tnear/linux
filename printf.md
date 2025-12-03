# printf

`printf` - format and print data

Note: `printf`, unlike [`echo`](echo.md), does not include a newline at the end.

## Basic usage
```bash
# print hex characters
$ printf '\x41\x42\x43'
ABC

# use contents of file for command line input
$ printf '12345\xa5\xdb\x17\x00' > input.bin
$ ./overflow "$(< input.bin)"

# format specifiers
$ printf 'Hello, %s %d' 'user' '123'
Hello, user 123
```
