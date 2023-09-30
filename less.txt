LESS

less - opposite of more - file perusal filter for crt viewing

# Page through passwd file:
$ less /etc/passwd
root:x:0:0:root:/root:/usr/bin/zsh
daemon:x:1:1:daemon:/usr/sbin:/usr/sbin/login
bin:x:2:2:bin:/bin:/usr/sbin/login
sys:x:3:3:sys:/dev:/usr/sbin/login

KEYS:
/[regex_pattern]   Find beneath
?[regex_pattern]   Find above
j                  One line down
k                  One line up
d                  Page down
u                  Page up
q                  Quit

g                  Top of output
G                  Bottom of output

n                  Next match during search
N                  Previous match during search

COMMANDS: press '-' to enter command mode
-I    Ignore case in searches and in patterns (toggle)

# Find user names ending with a digit.
# do not add trailing slash, ex: /<regex>/
$ less /etc/passwd (note: \w and \d are not supported)
$ /^[a-z]+[0-9]:
user1:x:998:998:...
test2:x:999:999:...

---