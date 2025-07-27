# zoxide

`zoxide` - A faster way to navigate your filesystem

Repository: https://github.com/ajeetdsouza/zoxide

## Init for zsh (should done in .zshrc)
```bash
$ eval "$(zoxide init zsh)"
$ alias cd='z'
```

## Basic usage

```bash
# Navigate to python directory:
$ z python
$ pwd
~/python

# Navigate to linux directory. Nested directories do not need a full path
# if they've been seen before
$ pwd
~/python

$ z linux  # Note: currently in ~/python, NOT ~:
$ pwd
~/linux

# Resolve ambiguities (ex: same directory name in different directories)
# using zoxide interactive (zi) (note: this also uses fzf):
$ zi foo
/tmp/dir/foo
/tmp/foo
```

## [`fzf`](fzf.md) integration

### `zi`
Use `zi` to use *interactive* mode.
```bash
$ zi
# use fuzzy find to navigate to a directory
```

### Multiple path tokens

## Query

```bash
# list all directories and their frequency
$ zoxide query -l -s
100.0 /Users/me/home
25.0 /tmp
5.5 /Users/repos/python
```
