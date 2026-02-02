MKTEMP

mktemp - create a temporary file or directory

# Create a temporary file:
$ mktemp
/tmp/tmp.prF7w3Di9P

# Create a temporary directory:
$ mktemp -d
/tmp/tmp.BBTBG6KZwh

# Create a temporary directory and navigate there:
$ cd $(mktemp -d)
[/tmp/tmp.8F5BTjCwhG] $

---