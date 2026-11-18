# shift

`shift` - a shell built-in that moves command-line arguments one position to the left

## Introduction

`shift` is commonly used in Bash scripts to process arguments one at a time.

```bash
$ bash demo.sh apple banana cherry

$ cat demo.sh
echo "First argument: $1"  # outputs apple

shift  # consume 1st argument, shift other args left

echo "First argument now: $1"  # outputs banana
```
