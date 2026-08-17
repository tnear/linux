# declare

`declare` is a bash built-in which sets variables and/or give them attributes.

See also: [`unset`](unset.md), [`readonly`](readonly.md)

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

## Display the attributes and values of variables
Use `-p`.

```bash
# list all variables
declare -p

# list all variables set to empty string
declare -p | grep '=""$'
```

## Data types

```bash
# use '-i' to declare an integer
declare -i count=5
count=count+3  # arithmetic without needing $(( ))
echo $count    # outputs 8
unset count    # undeclare/remove variable

# without -i, bash performs string concatenation
```

## Read-only variable
To create a read-only variable (constant), use `-r`. See [`readonly`](readonly.md) for a complete example.
