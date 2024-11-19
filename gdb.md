# gdb

## Breakpoints

### Breakpoint information
Use `info breakpoints` or `info b` to display information about breakpoints.
```
(gdb) info b
Num   Type         Disp Enb Address            What
3     breakpoint   keep y   0x04108b0 in MyFcn::TestBody() at test/testWrite.cpp:121
```

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
(gdb) clear      # clear all breakpoints
(gdb) clear 100  # clear breakpoint on line 100
```

### Enable/disable
Use `enable` / `disable` to toggle availability.

Use `enable N` / `disable N` to toggle a particular breakpoint index.

## Backtrace
Use `bt` or `backtrace` to examine the call stack.

### Frame
Use the `frame` command to change stack frames.

```
(gdb) frame 3  # change to stack frame 3
(gdb) frame    # view what frame is current (3)
(gdb) frame 0  # return to top of stack
```

### Up/down
Use `up` to increment one from the frame. Use `down` to decrement.

```
(gdb) frame 3  # switch to frame 3
(gdb) up       # switch to frame 4
(gdb) down 3   # subtract (frame 4 - 3) to change to frame 1
```

## Text user interface
Text user interface (TUI) is a gdb mode which shows the source file, command pane, and breakpoint locations in one view.

To fix ncurses rendering issues (common in TUI mode), press `Ctrl+L`.

### Enabling TUI
```
(gdb) tui enable
```

### Support using arrow keys for history
Use `Ctrl+X O` to move focus to the command window. This enables the arrow keys to access the command history. The mouse scroll wheel will continue to function.

## Watchpoints
A watchpoint (or *data breakpoint*) is a way to pause execution when the value of an expression changes.

### Watch the value of a single variable
Execution will pause when the value of the variable `foo` changes.
```
(gdb) watch foo
(gdb) continue

Hardware watchpoint 2: foo
Old value = 5
New value = 7
main () at a.cpp:8
```

### List watchpoints
```
(gdb) info watchpoints
Num   Type           Disp  Enb Address   What
2     hw watchpoint  keep  y             x
3     hw watchpoint  keep  y             y
```

## Threading
List current threads using `info threads`.

Switch to a thread using `thread <thread_num>`, ex: `thread 2`.

## Pretty printers

### List all pretty printers
To list all pretty printers,
```
(gdb) info pretty-printer
global pretty-printers:
  builtin
    mpx_bound128
  objfile /lib64/libstdc++.so.6 pretty-printers:
  libstdc++-v6
    __gnu_cxx::__8::__normal_iterator
```

### `filesystem::path`
```
# workingFolder_ is std::filesystem::path
(gdb) p workingFolder_._M_pathname
$1 = "/tmp/myWorkingPath"
```

## Resources
- https://sourceware.org/gdb/current/onlinedocs/gdb.html/Set-Watchpoints.html
