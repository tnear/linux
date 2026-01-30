# grep

`grep` - print lines that match patterns

Globally search for a Regular Expression and Print matching lines

Syntax:
```bash
$ grep -options 'pattern' <file_or_directory>
```

See also [`ripgrep`](rg.md).

## Common flags
- `-A`: show X lines after. Space is optional: `-A 3` or `-A3`
- `-a`: treat binary files as ASCII. Useful to see more than 'binary file matches'
- `-B`: show X lines before, ex: `B7`
- `-C`: show X lines before and after, ex: `C3`
- `-c`: count number of occurrences
- `-E`: extended regexp, supports extra characters such as `|`
- `-F`: fixed strings (no regex). Ex: no special meaning for `.`, `*`, etc.
- `-f`: match patterns defined in file
- `-i`: case insensitive
- `-L, --files-without-match`: list files which do *not* match pattern
- `-m, --max-count`: stop after NUM results, ex: `grep -m 1 ...`
- `-n`: show line numbers
- `-o`: only print matched text
- `-P`: PCRE. Ex: can use `\d` instead of '[0-9]'
- `-q`: quiet (no stdout). Useful for conditionals
- `-R`: recursively search directories while following symlinks
- `-r`: recursively search directories (do not follow symlinks)
- `-v`: invert-select. Return lines NOT containing pattern
- `-w`: match whole word
- `-x`: exact line match (entire line must match)
- `--exclude-dir=GLOB`: ignore specified directories

## Recursively search all sub-directories
Use `-R, --dereference-recursive` to recursive search starting in a directory. Lowercase (`-r`) will not follow symlinks.

```bash
$ grep -R 'repo' ~

# Exclude '.git' directory from 'repo' directory
$ grep -R --exclude-dir='.git' 'repo'

# exclude multiple directories
$ grep -R --exclude-dir={.git,.vscode} 'log'
```

Note: [`rg`](rg.md) searches recursively by default.

## Only print matched text
This uses `.*` to match from desired text (`user`) to the end of the line. Nothing before `user` is printed.
```bash
$ grep -o 'user.*' /etc/passwd
user mode. Setup User:/var/setup:/bin/bash
```

## PCRE example (fails without -P)
```bash
$ echo '1 2' | grep -P '\d'
```

## Match patterns in a file
Use `-f, --file`.
```bash
$ cat patterns.txt
^a$
b\.txt

$ cat a.txt
a
b.txt
c
# Use patterns.txt to match a.txt:
# (note: -f is incompatible with -P)
$ \grep -f patterns.txt a.txt
a
b.txt
```

## Show 3 lines before and 4 lines after pattern
```bash
$ grep -B3 -A4 'pattern' <file>
```

## Multiline
`grep` does not support multiline patterns. Use [`ripgrep`](rg.md) instead.

## Entire files

### List files which do not match a pattern
```bash
# find markdown files which do not contain the letter 'p'
grep -L 'p' *.md
```
