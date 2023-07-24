PRINTENV

printenv - print all or part of environment

# List all environment variables:
$ printenv
COLORFGBG=15;0
COLORTERM=truecolor
<truncated>

# Print specified env variables:
$ printenv SHELL
/usr/bin/zsh

# Search env variables:
$ printenv | grep <pattern>

---