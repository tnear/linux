# Parameter Expansion

See also: [variable substitution](variable_substitution.md)

## Basic usage
```bash
my_variable="Hello World"
echo "${my_variable}"  # outputs "Hello World
```

## Pattern removal
Pattern removal is an efficient way to extract text without spawning a subprocess (like [`basename`](basename.md) would).

### Pattern Removal Operators
| Syntax | Description | Example |
|--------|-------------|---------|
|`${var#pattern}`| Remove shortest match from beginning | `${file#*.}` removes first extension |
| `${var##pattern}` | Remove longest match from beginning | `${file##*.}` gets just extension |
| `${var%pattern}` | Remove shortest match from end | `${file%.*}` removes extension |
| `${var%%pattern}` | Remove longest match from end | `${file%%.*}` removes all extensions |

### Remove shortest match from beginning
```bash
dev="/sys/block/nvme0n1"
# use '*/' for pattern to remove anything ('*' glob) followed by a
# forward slash. Since this uses '#', it removes the shortest
# match: "/" instead of "/sys"
trimmed=${dev#*/}  # trimmed='sys/block/nvme0n1'
```

### Remove longest match from beginning
```bash
dev="/sys/block/nvme0n1"
# use '*/' for pattern to remove anything ('*' glob) followed by a
# forward slash. Since this uses '##', it removes the longest
# match: "/sys/block/" instead of "/sys/"
trimmed=${dev##*/}  # trimmed='nvme0n1'
```
