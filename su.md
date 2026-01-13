# su

`su` - run a command with substitute user and group ID

## Basic usage

```bash
# Change to user by entering password
$ su my_user
Password: <enter here>
$ whoami
my_user
```

### Dash usage
Use `-` to start a login shell. This runs shell startup files such as `.bashrc`
```bash
$ sudo su - my_user
```

## Preserve environment
Use `-p, --preserve-environment` to preserve environment (shell, home, etc.):

```bash
$ su -p travis
# or


# (-p is easier)
# -s = shell to use:
$ su -s /usr/bin/zsh travis
```
