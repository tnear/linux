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
Use Ctrl+R (fzf overrides default history shortcut).

## Search list of active processes:
```
$ ps -aux | fzf
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
```
# Use vim to open results of fzf
$ vim $(fzf)
```
