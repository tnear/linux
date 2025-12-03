PRINTF

printf - format and print data

Note: printf, unlike echo, does not include a newline at the end.

# Print hex characters:
$ printf '\x41\x42\x43'
ABC

# Use contents of file for command line input:
$ printf '12345\xa5\xdb\x17\x00' > input.bin
$ ./overflow "$(< input.bin)"

# Format specifiers:
$ printf 'Hello, %s %d' 'tnear' '123'
Hello, tnear 123

---