# rg

`rg` - ripgrep recursively searches directories for a regex pattern while respecting your gitignore.

Repository: https://github.com/BurntSushi/ripgrep

ripgrep shares many of the same flags as grep.

## Recursively search a directory for a regular expression
```
$ rg regular_expression <dir>
ex: $ rg 'int main' ~
```

Find trailing whitespace:
```
$ rg ' $'
scp.md
8:```

rg.md
14:$ rg --hidden git
```

To search hidden directories (such as `.git`), use the `--hidden` flag:
```
$ rg --hidden git
```

## Glob (wildcard) search
Use `-g, --glob` to wildcard search only certain file name patterns.
```
$ rg 'int main' -g 'a*.c'
alignof.c
29:int main()

access.c
38:int main()

alloca.c
47:int main()
```

## Case insensitive search
Use `-i, --ignore-case`:
```
$ rg -i 'Int Main'
```

## Replace text
Use `-r, --replace` to replace output.

This example replaces 'hello' with 'world' (note: this only affects stdout. It does not modify any files).

`$ rg hello -r world`

### Capture group
This example replaces 'hello <word>' with 'goodbye <word>'.

`$ rg 'hello (\w+)' -r 'goodbye $1'`

## Multiline
Use the multiline flag, `-U, --multiline`, to search multiple lines. Note: `ripgrep` supports this, but `grep` does not.
```
$ rg 'abc\ndef' -U
lines.txt
1:abc
2:def
```
