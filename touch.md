TOUCH

touch - change file timestamps

Syntax:
$ touch [OPTION]... FILE...

# Create empty file:
$ touch empty_file.txt

# Update timestamp of existing file:
$ touch existing_file.txt

# Create three empty files:
$ touch a b c

-r, --reference = use a file's time instead of the current time
# Set destFile timestamp to srcFile:
$ touch -r srcFile destFile

# Hide changes to /etc/passwd
$ touch -r /etc/shadow /etc/passwd

---