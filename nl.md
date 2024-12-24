NL

nl - number lines of files

# Syntax:
nl [OPTION]... [FILE]...

# Basic usage:
$ nl /etc/passwd
    1  root:x:0:0:root:/root:/usr/bin/zsh
    2  daemon:x:1:1:daemon:/usr/sbin:/usr/sbin/nologin
    3  bin:x:2:2:bin:/bin:/usr/sbin/nologin

# Show line numbers for exported environment variables:
$ export | nl
    1  COLORFGBG='15;0'
    2  COLORTERM=truecolor
    3  COMMAND_NOT_FOUND_INSTALL_PROMPT=1

---