# Variable Substitution

See also: [parameter expansion](parameter_expansion.md)

## Substitute the value of var
```bash
$ a='hello'
$ echo "${a} world"
# OR:
$ echo "$a world"
hello world
```

## Default values
```bash
# ':=' if var is null or unset, var is set to the value of word:
# ${VAR:=default}
$ unset var
$ echo ${var:=word}
word

$ echo $var
word

# ':-': if var is unset, 'word' is substituted for var. var does not change:
$ unset var
$ echo ${var:-word}
word

$ echo $var
<empty>

# Now set var and show that 'word' is no longer used:
$ var='var'
$ echo ${var:-word}
var
```
