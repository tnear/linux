# alias

`alias` - define or display aliases

## List aliases
```bash
$ alias
diff='diff --color=auto'
egrep='egrep --color=auto'
fgrep='fgrep --color=auto'
grep='grep --color=auto -P'
```

## Create aliases
```bash
$ alias grep="grep --color=auto -P"

# Create permanent alias:
$ code ~/.zshrc
```

## Display alias
```bash
$ alias ls
ls='ls --color=auto'
```

## Escaping
```bash
# Escape alias (technique 1), use 'command':
$ command ls

# Escape alias (technique 2), escape a letter:
$ \ls
# OR
$ l\s
# OR
$ \l\s
```
