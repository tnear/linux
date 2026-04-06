# compgen

`compgen` is a Bash built-in command used to generate lists of possible completions

`compgen` returns the same values that Bash uses for tab completion.

See also: [`mapfile`](mapfile.md)

## Basic usage

```bash
# list all commands available to PATH
$ compgen -c
# filter by prefix
$ compgen -c git

# list files
$ compgen -f

# list directories
$ compgen -d

# list variables
$ compgen -v

# globs (patterns)
$ compgen -G '*.txt'
```
