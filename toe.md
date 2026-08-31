# toe

`toe` - table of (terminfo) entries

See also: [`infocmp`](infocmp.md)

## Introduction

These entries tells programs what different terminals can do. Colors is a common example.

```bash
# view current terminal's capabilities
$ echo $TERM        
xterm-256color

# list all (-a) entries that a machine supports
$ toe -a
alacritty       alacritty terminal emulator
ansi            ansi/pc-term compatible with color
cygwin          ANSI emulation for Cygwin
xterm-256color  xterm with 256 colors
```
