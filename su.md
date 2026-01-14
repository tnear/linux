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
Use `-` (hyphen) to start a login shell. This runs shell startup files such as `.bashrc`
```bash
$ sudo su - my_user
```

## Preserve environment
Use `-p, --preserve-environment` to preserve your current environment (environment variables, shell).

```bash
$ su -p my_user
```
