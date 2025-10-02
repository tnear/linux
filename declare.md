# declare

`declare` is a bash built-in which sets variables and/or give them attributes.

Syntax:
```bash
declare [options] [name[=value]] [name[=value]] ...
```

## Basic usage

```bash
declare var
var=101

# print value
echo $var            
101
```

## Display the attributes and values of variables.
Use `-p`.

```bash
# list all variables
declare -p

# list all variables set to empty string
declare -p | grep '=""$'
```