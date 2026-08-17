# readonly

`readonly` - a bash builtin which makes a variable or function read-only

See also: [`declare`](declare.md)

## Introduction

```bash
# list all readonly variables
$ readonly
```

### Declaring readonly variables
```bash
# declare variable as readonly
$ readonly NAME='test'
$ NAME='new'
bash: NAME: readonly variable

# readonly variables cannot be removed
$ unset NAME
bash: NAME: readonly variable

# alternate syntax using 'declare'
$ declare -r NAME='test'
```
