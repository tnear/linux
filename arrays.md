# arrays

Arrays in shell scripts.

## Example
```bash
# Create array using parentheses (no comma)
$ arr=(2 3 4)

# Arrays are 1-indexed and accessed by variable substitution, ${var}:
$ echo ${arr[1]}
2

# Output entire array:
$ echo ${arr}  # or ${arr[*]} or ${arr[@]}
2 3 4
```
