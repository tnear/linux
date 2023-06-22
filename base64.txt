BASE64

base64 - base64 encode/decode data and print to standard output

# File:
$ echo 'abc' > abc.txt
$ base64 abc.txt
YWJjCg==

# Strings:
$ echo 'abc' | base64
YWJjCg==

# -d, --decode:
$ echo 'YWJjCg==' | base64 -d
abc

---