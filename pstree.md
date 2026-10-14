# pstree

`pstree` - process tree - display a tree of processes

## Flags
- `-a`: show command line arguments
- `-h`: highlight current process and ancestors (in bold)
- `-p`: show PIDs
- `-s`: show parent processes

## Examples

### Tree of all processes
```bash
$ pstree

systemd-+-ModemManager---2*[{ModemManager}]
        |-NetworkManager---2*[{NetworkManager}]
        |-3*[VBoxClient---VBoxClient---3*[{VBoxClient}]]
        |-VBoxClient---VBoxClient---4*[{VBoxClient}]
        |-VBoxService---8*[{VBoxService}]
        |-agetty
<truncated>
```

### Tree of processes rooted at <id>
```bash
$ pstree <pid>

# Tree of current process ID (shell):
$ pstree $$
zsh───pstree

# Tree of user processes, ex: $ pstree root:
$ pstree <userid>
```
