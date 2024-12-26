# gdb

## Source code
Use `list` to see print code lines.

### Common `list` usages
```
(gdb) list  # print lines
(gdb) list <line_num>  # print lines centered around line_num
(gdb) list function  # print lines of function
```

### Other lines of code usages
```
(gdb) frame  # show current line
(gdb) tui enable  # enter tui mode
```

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

## Stepping
- Use `next` or `n` to step over the current line.
- Use `step` or `s` to step into the current line.
- Use `finish` or `fin` to step out of the current function.

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

### Full backtrace
Use `backtrace full` to see the backtrace with local variable names and values.
```
(gdb) bt full
#0  recursive_func (depth=2) at debug.cpp:13
        local_var = 32767
#1  0x0000000000401227 in main () at debug.cpp:25
        head = {
          next = 0x416eb0
        }
```

## Text user interface
Text user interface (TUI) is a gdb mode which shows the source file, command pane, and breakpoint locations in one view.

### Toggling TUI
Use either the command below or shortcut key (`Ctrl + X + A`).
```
(gdb) tui enable
(gdb) tui disable
```

### Fix rendering issues
To fix ncurses rendering issues (common in TUI mode), press `Ctrl+L`.

### Cycling command history (without arrow keys)
Use `Ctrl+P` for previous and `Ctrl+N` for next. Note: VSCode may intercept these shortcuts if using gdb through a terminal pane in VSCode.

### Support using arrow keys for history
Use either `focus cmd` or shortcut `Ctrl+X O` to move focus to the command window. This enables the arrow keys to access the command history. The mouse scroll wheel will continue to function.

- Use `focus next` to cycle between.
- Use `focus src` to set focus back to source.

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

### Other watchpoint capabilities
```
watch foo             # stop when foo is modified
watch -l foo          # watch location (address)
rwatch foo            # stop when foo is read (read watchpoint)
watch foo thread 3    # stop when thread 3 modifies foo
watch foo if foo > 10 # stop when foo is > 10
```

## Threading
List current threads using `info threads`.

Switch to a thread using `thread <thread_num>`, ex: `thread 2`.

## Macros

### Display macro by name
Use `info macro <name>`.
```
(gdb) info macro MULTIPLY
Defined at /home/user/debug.cpp:3
#define MULTIPLY(x, y) ((x) * (y))
```

## Dynamic printf (dprintf)
`dprintf` creates `printf` printing without recompilation.

```
(gdb) dprintf <loc>, "String length: %d\n", s->length

# where <loc> is a regular gdb breakpoint location, ex:
(gdb) dprintf example.c:15 ...
(gdb) dprintf func ...
```

## Pretty printers

### Enable pretty print
Add this to `.gdbinit`: `set print pretty on`

### Query pretty print status
```
(gdb) show print pretty
Pretty formatting of structures is on.
```

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

## Process ID (PID)

### Attach to existing process ID
Use `gdb -p pid`.

If there is one instance running: `gdb -p $(pidof <process_name>)`.

## Get PID of inferior (attached) process
```
(gdb) info inferior
  Num  Description       Connection      Executable
* 1    process 11126     1 (native)      /home/user/debug.out
```

## Python
gdb includes a built-in Python interpreter.

### Run simple command
```
(gdb) python print('hello world')
hello world
```

### Run complex commands
To run more complex commands, enter into `python` mode. Type `end` when done.
```
(gdb) python
for item in [1, 2, 3]:
    print(item)
end
```

## Shell commands
To run shell commands from `gdb`, type `shell <cmd>`. Ex:

```
(gdb) shell ps
  PID TTY          TIME CMD
 1024 pts/6    00:00:00 zsh
25575 pts/6    00:00:00 gdb
25670 pts/6    00:00:00 ps
```

## Resources
- https://sourceware.org/gdb/current/onlinedocs/gdb.html/Set-Watchpoints.html
- https://youtu.be/-n9Fkq1e6sg
- https://youtu.be/V1t6faOKjuQ
