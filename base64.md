# base64

`base64` - base64 encode/decode data and print to standard output

## Basic usage
```bash
# file
$ echo 'abc' > abc.txt
$ base64 abc.txt
YWJjCg==

# strings
$ echo 'abc' | base64
YWJjCg==

# use -d, --decode for reverse
$ echo 'YWJjCg==' | base64 -d
abc
```
