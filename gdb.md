# gdb

## Breakpoints

### Setting breakpoints
To set a breakpoint, use any combination of these commands:
```
(gdb) b main         # break in the main function
(gdb) b 100          # break on line 100 of current file
(gdb) b file.cpp:100 # break in file name at line number
```

### Clearing (removing/deleting) breakpoints
Use gdb's `clear` command:
```
(gdb) clear 100
```

### Breakpoint information
Use `info breakpoints` or `info b` to display information about breakpoints.
```
(gdb) info b
Num   Type         Disp Enb Address            What
3     breakpoint   keep y   0x04108b0 in MyFcn::TestBody() at test/testWrite.cpp:121
```

## Backtrace
Use `bt` or `backtrace` to examine the call stack.

### Frame
Use the `frame` command to change stack frames.

```
(gdb) frame 3  # change to stack frame 3
(gdb) frame    # view what frame is current (3)
(gdb) frame 0  # return to top of stack
```

## Text user interface
Text user interface (TUI) is a gdb mode which shows the source file, command pane, and breakpoint locations in one view.

### Enabling TUI
```
(gdb) tui enable
```

### Support using arrow keys for history
Use `Ctrl+X O` to move focus to the command window. This enables the arrow keys to access the command history. The mouse scroll wheel will continue to function.
