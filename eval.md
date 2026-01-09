# eval

`eval` - construct command by concatenating arguments


`eval` is a shell built-in utility that concatenates its arguments into a single string and then executes that string as a command within the current shell environment.

## Basic usage

```bash
cmd='ls -la'
eval "$cmd"  # executes 'ls -la'
```
