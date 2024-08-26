# chsh

`chsh` - change your login shell

## Change default shell
The `-s` flag is used to specify the new default shell.

```
# change to bash
chsh -s /bin/bash
# or: chsh -s $(which bash)

# change to zsh
chsh -s /bin/zsh
# or: chsh -s $(which zsh)
```

Log out then log back in to see the update.
