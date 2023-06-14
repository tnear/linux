SUDO

sudo, sudoedit — execute a command as another user

# Change to root:
# (alt syntax: $ sudo su -)
user@machine $ sudo -i
root@machine # whoami
root

# Run command as root:
$ sudo apt install <pkg_name>

# -u = run command as a specified user:
$ sudo -u nobody whoami
nobody

# Run last command as 'root':
# sudo !!

# List sudoers:
$ sudo cat /etc/sudoers

---