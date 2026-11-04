# zsh

`zsh` - the Z shell

See also: [`bash`](bash.md), [3p](3p.md)

## Plugins
Useful plugins to install.

- `colored-man-pages`
- `zsh-autosuggestions`
- `zsh-history-substring`
- `zsh-syntax-highlighting`

Note: `zsh-autocomplete` is causing terminal crashes on mac at the moment.

## Features

### Auto-suggest for flags
Type `-` then `<tab>` to see options for a flag:
```bash
$ ll -<tab>
```

## Autocomplete
Example to get autocomplete working with `bazel`.

```bash
# create oh-my-zsh completions directory if it doesn't exist
mkdir -p ~/.oh-my-zsh/completions/
cd ~/.oh-my-zsh/completions/

# download _bazel autocomplete file
curl https://raw.githubusercontent.com/bazelbuild/bazel/master/scripts/zsh_completion/_bazel -o _bazel

# rebuild autocompletions
rm -f ~/.zcompdump
compinit
```

## Resources
- https://stackoverflow.com/questions/58331977/bazel-tab-auto-complete-in-zsh-not-working
