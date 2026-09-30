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

## Arrays

### Indexed array

Use `-a` to declare an indexed array.
Note: indexing works differently with bash vs zsh.
```bash
declare -a fruits=("apple" "banana" "cherry")
echo "${fruits[1]}"
# outputs "banana" with bash (0-indexed)
# outputs "apple" with zsh (1-indexed)
```

### Associative array

Use `-A`.
```bash
declare -A colors=([apple]="red" [banana]="yellow")
echo "${colors[apple]}"  # red
```
