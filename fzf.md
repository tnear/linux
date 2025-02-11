# fzf

`fzf` - a command-line fuzzy finder
https://github.com/junegunn/fzf

## List files: Ctrl+T
```
$ code <Ctrl+T>
```

### Select multiple files with the `<TAB>` key
```
$ code env.txt sync.txt
```

## History
Use Ctrl+R (`fzf` overrides default history shortcut).

## Search list of active processes:
```
$ ps -aux | fzf
```

## `**` (relevant data)
Use `**` then `<TAB>` to show relevant data for a command.

```bash
# show processes (use the tab key in fzf to select multiple processes)
kill **<TAB>

# show hostnames
ssh **<TAB>

# show aliases
unalias **<TAB>

# show directories and sub-directories
cd **<TAB>       # pwd
cd /usr/**<TAB>  # /usr
```

## Search syntax
```
'query = exact match (non-fuzzy)
^query = prefix exact match
query$ = suffix exact match
!.txt  = inverse exact match (find all files which do not end with .txt)
```

## Command substitution
Note: this is not normally needed. Ctrl+T is often easier, plus it adds to your history).
```bash
# Use vim to open results of fzf
$ vim $(fzf)
```
