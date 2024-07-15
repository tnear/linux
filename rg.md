RG

rg - ripgrep recursively searches directories for a regex pattern while respecting your gitignore
Repository: https://github.com/BurntSushi/ripgrep/tree/master

ripgrep shares many of the same flags as grep.

# Recursively search the current directory for a regular expression:
$ rg regular_expression

# Enable searching hidden directories
$ rg --hidden git

# -g, --glob = search only certain files
$ rg 'int main' -g '*.c'

# -i, --ignore-case
$ rg -i 'Int Main'

# -r, --replace
# Replace 'hello' with 'world':
# (Note: this only affects stdout. It does not modify any files)
$ rg hello -r world

# Capture group (replace):
# Replace 'hello <word>' with 'goodbye <word>':
$ rg 'hello (\w+)' -r 'goodbye $1'

---