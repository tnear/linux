# grep

`grep` - print lines that match patterns

Globally search for a Regular Expression and Print matching lines

Syntax:
```bash
$ grep -options 'pattern' <file_or_directory>
```

See also [`ripgrep`](rg.md).

## Common flags
```
-A = show X lines after. Space is optional: '-A 3' or '-A3'
-a = treat binary files as ASCII. Useful to see more than 'binary file matches'
-B = show X lines before
-C = show X lines before and after
-c = count number of occurrences
-E = extended regexp, supports extra characters such as '|'
-f = match patterns defined in file
-i = case insensitive
-m NUM, --max-count=NUM = stop after NUM results, ex: grep -m 1 'pattern'
-n = show line numbers
-o = only print matched text
-P = PCRE. For example, if left off must use '[0-9]' for '\d'
-q = quiet, do not write anything to stdout. Useful for conditionals.
-r = recursively search directories
-R = recursively search directories while following symlinks
-v = invert-select. Return lines NOT containing pattern.
-w = match whole word
--exclude-dir=GLOB = ignore specified directories
```

## -r, --recursive = recursively search all sub-directories
Use `-r` to recursive search starting in a directory.
```bash
$ grep -r 'repo' ~

# Exclude '.git' directory from 'repo' directory
$ grep -r --exclude-dir='.git' 'repo'

# exclude multiple directories
$ grep -r --exclude-dir={.git,.vscode} 'log'
```

Note: [`rg`](rg.md) does this natively.

## Only print matched text
This uses `.*` to match from desired text (`user`) to the end of the line. Nothing before `user` is printed.
```bash
$ grep -o 'user.*' /etc/passwd
user mode.  At other times this information is provided by
user:*:248:248:Setup User:/var/setup:/bin/bash
```

## Find lines NOT containing the letter 'e' using invert-select (-v)
```bash
$ lscpu | grep -v e
CPU(s):                4
CPU family:            6

# Count number of occurrences:
$ grep -c system /etc/passwd
4
```

## PCRE example (fails without -P)
```bash
$ echo '1 2' | grep -P '\d'
```

## Match patterns in a file, -f, --file
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
