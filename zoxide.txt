ZOXIDE

zoxide - A faster way to navigate your filesystem
Repository: https://github.com/ajeetdsouza/zoxide

# Init for zsh (should done in .zshrc):
$ eval "$(zoxide init zsh)"
$ alias cd='z'

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

---