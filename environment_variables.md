# Environment Variables

List of common environment variables.

See also: [`printenv`](printenv.md)

## Common environment variables
### Shell
```bash
$ echo $SHELL
/usr/bin/zsh
```

### User
```bash
$ echo $USER
kali

# alternate syntax
$ printenv USER
```

### Home directory
```bash
$ echo $HOME
/home/kali
```

### Path
These are directories searched when running commands.
```bash
$ printenv PATH
/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

### Locale
```bash
$ printenv LANG
en_US.UTF-8
```

### Prompt string (PS)
```bash
$ echo $PS1
```

### Bash
```bash
$ echo $BASH_VERSION
4.4.20(1)-release
```

### Zsh
```bash
$ zsh --version
zsh 5.9 (x86_64-apple-darwin23.0)
```

## Creation

### Temporary (current session only)
```bash
export VAR_NAME="value"
```

### Permanent
This should use the `.zshenv` file for environment variables.
```bash
$ echo 'export MY_VAR=1234' >> ~/.zshenv
```

## Pass environment variables to subprocesses
```bash
$ bash -c 'echo $QQQQ'
<no output>
# Now, pass in space-separated variables and echo their values:
$ QQQQ=101 ZZZZ=102 bash -c 'echo $QQQQ $ZZZZ'
101 102
```
