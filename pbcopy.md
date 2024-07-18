# pbcopy

`pbcopy`, `pbpaste` - provide copying and pasting to the pasteboard (the Clipboard) from command line

Command for macOS.

## Example
Copy:
```bash
$ pbcopy < ~/.ssh/id_ed25519.pub
```

Paste:
```
$ pbpaste # no args

ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIJ2h3dip/I44lEQaAYMc9fRuflYu4uRitxbs5r1Pk6RW travis.near@oracle.com
```
