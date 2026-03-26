# command

`command` - a shell built-in that displays information about commands.

Prefixing a command with `command` bypasses functions and aliases.

## Run un-aliased version of a command
```bash
# ll is an alias
$ command ll
zsh: command not found: ll

# ls is commonly aliased to add color,
# the call below uses un-aliased 'ls'
$ command ls
```

### Check if command exists
Use the `-v` flag.
```bash
if ! command -v git >/dev/null 2>&1; then
    echo "git is not installed"
fi
```
