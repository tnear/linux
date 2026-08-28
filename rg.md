# rg

`rg` - recursively search the current directory for lines matching a pattern

See also: [`grep`](grep.md)

## Recursively search a directory for a regular expression
```bash
$ rg regular_expression <dir>
# ex:
$ rg 'int main' ~

# find trailing whitespace:
$ rg ' $'

# case insensitive search (-i, --ignore-case)
$ rg -i 'Int Main'
```

To search hidden directories (such as `.git`), use the `--hidden` flag:
```bash
$ rg --hidden git
```

## Glob (wildcard) search
Use `-g, --glob` to wildcard search only certain file name patterns (or file extensions).
```bash
$ rg 'int main' -g 'a*.c'
alignof.c
29:int main()

access.c
38:int main()

alloca.c
47:int main()
```

## Replace text
Use `-r, --replace` to replace output.

This example replaces 'hello' with 'world' (note: this only affects `stdout`. It does not modify any files).

```bash
$ rg hello -r world
```

### Capture group
This example replaces 'hello <word>' with 'goodbye <word>'.

```bash
$ rg 'hello (\w+)' -r 'goodbye $1'
```

## Multiline
Use the multiline flag, `-U, --multiline`, to search multiple lines. Note: this flag is not supported by `grep`.
```bash
$ rg 'abc\ndef' -U
lines.txt
1:abc
2:def
```

## .gitignore
By default, `rg` does not inspect `.gitignore` files and directories. To override this, use `-u, --no-ignore`:

```bash
rg --no-ignore 'search_term'
```

## Resources
- https://github.com/BurntSushi/ripgrep
