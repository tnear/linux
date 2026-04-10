# arrays

Arrays in shell scripts.

## Example
```bash
# Create array using parentheses (no comma)
$ arr=(2 3 4)

# Bash indexed arrays are 0-indexed and accessed with ${arr[index]}:
$ echo ${arr[1]}
3

# Output entire array:
$ echo ${arr[*]}  # or ${arr[@]}
2 3 4
```
