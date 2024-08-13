# Environment Variables

List of common environment variables.

## Shell
```
$ echo $SHELL
/usr/bin/zsh
```

## User
```
$ echo $USER  # or: $ printenv USER
kali
```

## Home directory
```
$ echo $HOME
/home/kali
```

## Path
These are directories searched when running commands.
```
$ printenv PATH
/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

## Locale
```
$ printenv LANG
en_US.UTF-8
```

## Create permanent environment variable
This should use the `.zshenv` file for env vars.
```
$ echo 'export MY_VAR=1234' >> ~/.zshenv
```

## Prompt string (PS)
```
$ echo $PS1
```

## Pass environment variables to subprocesses
```
$ bash -c 'echo $QQQQ'
<no output>
# Now, pass in space-separated variables and echo their values:
$ QQQQ=101 ZZZZ=102 bash -c 'echo $QQQQ $ZZZZ'
101 102
```

## Shell version

### Bash
```
$ echo $BASH_VERSION
4.4.20(1)-release
```

### Zsh
```
$ zsh --version
zsh 5.9 (x86_64-apple-darwin23.0)
```
