# zsh

`Zsh` is a popular Unix shell.

## Plugins
Useful plugins to install.

- colored-man-pages
- zsh-autosuggestions
- zsh-history-substring
- zsh-syntax-highlighting
- web-search (can type: google <search_term> to search the web)

Note: zsh-autocomplete is causing terminal crashes on mac at the moment.

## Features

### Auto-suggest for flags
Type `-` then `<tab>` to see options for a flag:
```
$ ll -<tab>
-@    -- display extended attributes
-A    -- list all except . and ..
-B    -- print octal escapes for control characters
-F    -- append file type indicators
-H    -- follow symlinks on the command line
-L    -- list referenced file for sym link
-O    -- display file flags
```

## Autocomplete
Example to get autocomplete working for `bazel`.

```bash
# create oh-my-zsh completions directory if it doesn't exist
mkdir -p ~/.oh-my-zsh/completions/
cd ~/.oh-my-zsh/completions/

# download _bazel autocomplete file
curl https://raw.githubusercontent.com/bazelbuild/bazel/master/scripts/zsh_completion/_bazel -o _bazel

# rebuild autocompletions
rm -f ~/.zcompdump; compinit
```

## Resources
- https://stackoverflow.com/questions/58331977/bazel-tab-auto-complete-in-zsh-not-working
