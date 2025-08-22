# printenv

`printenv` - print all or part of environment

See also: [environment variables](environment_variables.md)

## List all environment variables
```bash
$ printenv
COLORFGBG=15;0
COLORTERM=truecolor
<truncated>
```

## Print specified env variables
```bash
$ printenv SHELL
/usr/bin/zsh
```

## Search env variables
```bash
$ printenv | grep <pattern>
```
