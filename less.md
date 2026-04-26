# less

`less` - opposite of more - file perusal filter for crt viewing

See also: [`man`](man.md)

## Basic usage
```
$ less /etc/passwd
```

## Flags

```bash
# -N to show line numbers
$ less -N my_file.log

# -M to show line, total lines, and percentage
$ less -M my_file.log
```

## Keys
| Key | Action |
|-----|--------|
| `/[regex]`| Find beneath |
| `?[regex]`| Find above |
| `j`       | One line down |
| `k`       | One line up |
| `d`       | Page down |
| `u`       | Page up |
| `q`       | Quit |
| `g`       | Top of output |
| `G`       | Bottom of output |
| `n`       | Next match during search |
| `N`       | Previous match during search |

## Commands
Press `-` to enter command mode.

| Command | Action |
|---------|--------|
| `-I` | Case insensitive search (toggle) |

```bash
# Find user names ending with a digit.
# do not add trailing slash, ex: /<regex>/
$ less /etc/passwd (note: \w and \d are not supported)
$ /^[a-z]+[0-9]:
user1:x:998:998:...
test2:x:999:999:...
```
