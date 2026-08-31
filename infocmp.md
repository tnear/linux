# infocmp

`infocmp` - compare or print out terminfo descriptions

See also: [`toe`](toe.md)

## Basic usage

`infocmp` reads and displays terminal descriptions from the terminfo database.

```bash
# no arguments examines current $TERM
$ infocmp
#       Reconstructed via infocmp from file: /usr/share/terminfo/x/xterm-256color
xterm-256color|xterm with 256 colors,
        am, bce, ccc, km, mc5i, mir, msgr, npc, xenl,
...

# view info for specified terminal type
$ infocmp xterm-256color
```