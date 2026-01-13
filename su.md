SU

su - run a command with substitute user and group ID

# Change to user (enter user's password at the prompt):
$ su travis
Password: <travis's password>
$ whoami
travis

# -p = preserve environment (shell, home, etc.):
# su -p travis

    # (-p is easier)
    # -s = shell to use:
    $ su -s /usr/bin/zsh travis

---