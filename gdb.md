# gdb

## Command line arguments
Use `--args` to pass command line arguments to `gdb`.
```bash
$ gdb --args ./myApp arg1 arg2
```

If `gdb` is already running, use `start`:
```
(gdb) start arg1 arg2
```

## Source code
Use `list` to print code lines.

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

See also: [`gdb-dashboard`](gdb.md#gdb-dashboard)

## Printing

### Printing elements
```bash
# elements controls number of items in a vector (or string) to print
# set string display length to unlimited
# (default behavior is to truncate)
(gdb) set print elements unlimited
(gdb) set print elements 0  # equivalent to 'unlimited'

# print multiple elements (12) of an array
(gdb) print *array@12
```

### `info locals`
Use `info locals` to print all local variables.

### `info variables`
Use `info variables` to see both local and global variables (may dump pages of data).

### Display value at each step
Use `display` (or `disp`) to display (print) the value of an expression with each step.

Use `undisplay` to clear a display.
```
(gdb) disp user.name()
(gdb) n  # next automatically prints 'user.name()'
1. user.name() = "alice"

(gdb) undisplay 1  # remove display when done
```

## Breakpoints

### Setting breakpoints
Example commands to set breakpoints:
```
(gdb) b main         # break in the main function
(gdb) b 100          # break on line 100 of current file
(gdb) b file.cpp:100 # break in file.cpp at line 100
(gdb) b 'MyFunction<*>::push_back' # C++ template function (wildcard)
(gdb) b MyFunction<int>::push_back # C++ template function (only integer)
(gdb) b *0x00007ffff7d048a0 # function address (must prefix with '*')
```

### Breakpoint information
Use `info breakpoints` or `info b` to display information about breakpoints.
```
(gdb) info b
Num   Type         Disp Enb Address            What
3     breakpoint   keep y   0x04108b0 in MyFcn::TestBody() at test/testWrite.cpp:121
```

### Clearing (removing/deleting) breakpoints
Use gdb's `delete` command to delete by index. Use `clear` to delete by name:
```
(gdb) del        # delete all breakpoints
(gdb) del 1      # delete breakpoint at index 1
(gdb) del 2-4    # delete breakpoints 2, 3, 4
(gdb) del 2 4 5  # delete multiple indexes

(gdb) clear      # clear all breakpoints
(gdb) clear 100  # clear breakpoint on line 100
```

### Enable/disable
Use `enable` / `disable` to toggle availability.

Use `enable N` / `disable N` to toggle a particular breakpoint number (index).

```
(gdb) enable 4    # enable breakpoint at index 4
(gdb) enable 2 3  # enable 2 and 3
(gdb) disable 3   # disable breakpoint 3
```

### Conditional breakpoints
Use `break <location> if <condition>`.

```
(gdb) break recursive_func.cpp:25 if depth == 1
```

### Temporary breakpoints
A temporary breakpoint automatically deletes itself after it is hit for the first. Enable with `tbreak` or `tb`.
```
(gdb) tb my_func
```

## Stepping
- Use `next` or `n` to step over the current line.
- Use `step` or `s` to step into the current line.
- Use `finish` or `fin` to step out of the current function.

### Until
- Use `until` (no arguments) to move forward to next line. This is similar to `next`, but it will not backtrack.
- Use `until <location>` to run until reaching a location.

```
(gdb) until  # move forward one statement without backtracking
(gdb) until 25  # run until line 25
(gdb) until main.cpp:15  # run until line 15 in main.cpp
```

### Running
Use `run` or `r` to run the application. If it has exited or crash, `run` will restart.

Use `start` to enter into the first line of executable code (such as beginning of `int main()`).

## Functions
Use `call` to call a function while stopped at a breakpoint.

```
(gdb) call myFcn(user.getName())
$1 = "Alice"
```

### Query function names
Use `info functions` to query function names.
```
# syntax: info functions <name>
(gdb) info functions push_back
std::string::push_back(char)

# regex query
(gdb) info functions vector.*push_back
```

## Call stack
Use `bt` or `backtrace` to examine the call stack.

### Frame
Use the `frame` command to change stack frames.

```
(gdb) frame 3  # change to stack frame 3
(gdb) f 3      # shorthand syntax
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

## Watchpoints
A watchpoint (or *data breakpoint*) is a way to pause execution when the value of an expression changes.

### Types
- Hardware watchpoint: uses special CPU debug registers to monitor memory. x86 contains 4 of these debug registers (`DR0-DR3`). They have minimal performance impact.
- Software watchpoint: after each instruction, gdb checks if watched memory changed. If so, it triggers pauses at the watchpoint. They have significant performance impact (often over 100x slowdown), but are always available.

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

### Watch an address
This is useful if the variable (but not its memory) leaves the scope of the current function:
```
(gdb) print &(cls->member)
$1 = (MyClass *) 0x7fffe80747bc

(gdb) watch *(MyClass *)0x7fffe80747bc
```

### List watchpoints
```
(gdb) info watchpoints
Num   Type           Disp  Enb Address   What
2     hw watchpoint  keep  y             x
3     hw watchpoint  keep  y             y
```

### Delete (remove) watchpoints
Use `delete <idx>` to remove a watchpoint.

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

## Source
Use `info source` to see full path to file, debug information, and more.

## Macros

### Display macro by name
Use `info macro <name>`.
```
(gdb) info macro MULTIPLY
Defined at /home/user/debug.cpp:3
#define MULTIPLY(x, y) ((x) * (y))
```

## Dynamic printf (`dprintf`)
`dprintf` creates `printf` printing without recompilation.

```
(gdb) dprintf <loc>, "String length: %d\n", s->length

# where <loc> is a regular gdb breakpoint location, ex:
(gdb) dprintf example.c:15 ...
(gdb) dprintf func ...
```

## Types

### `whatis`
Use `whatis` to see a variable's data type.
```
(gdb) whatis value.name()
type = std::string_view
(gdb) whatis value.name_
type = std::string
```

### `ptype`

Use `ptype` to display data type information for a variable.

```
(gdb) ptype head
type = struct Node<int> [with T = int] {
    T data;
    Node<T> *next;
  public:
    Node(T);
}
```

### Offset and size information

```
(gdb) ptype /o struct Node<int>
/* offset      |    size */  type = struct Node<int> [with T = int] {
/*      0      |       4 */    T data;
/* XXX  4-byte hole      */
/*      8      |       8 */    Node<T> *next;
                               /* total size (bytes):   16 */
                             }
```

You can also use `/xo` to see offsets and size in hex.

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
```bash
# workingFolder is type std::filesystem::path
(gdb) p workingFolder._M_pathname
$1 = "/tmp/myWorkingPath"
```

## Attaching

### Attach to existing process ID
Use `gdb -p pid`.

- If there is exactly one process running: `gdb -p $(pidof <process_name>)`.
- If gdb is already running, use `(gdb) attach <pid>` to attach.

### Detaching
Use the `detach` command to detach. This leaves the process running.

## Get PID of inferior (attached) process
```
(gdb) info inferior
  Num  Description       Connection      Executable
* 1    process 11126     1 (native)      /home/user/debug.out
```

## `set` commands

### `set substitute-path`
Maps an old path to a new path to locate source files.
```
(gdb) set substitute-path /old/path/to/source /new/path/to/source
```

## Catch
Use `catch` (or `catchpoint`) to stop execution when a certain event occurs, such as an exception.

```
# stop when syscall exit is called
(gdb) catch syscall exit

# stop when runtime_error is thrown.
# note: do NOT use single quotes here
catch throw std::runtime_error

# stop when runtime_error is caught
catch catch std::runtime_error
```

Use `tcatch` to create a temporary catchpoint.

### Viewing catchpoints
View catchpoints (and all breakpoints) with `info breakpoints` or `info b`.
```
>>> info breakpoints
Num     Type        Disp Enb Address  What
1      catchpoint   keep y            syscall "exit"
```

## Python
`gdb` includes a built-in Python interpreter.

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
To run shell commands from `gdb`, type `!<cmd>` or `shell <cmd>`. Ex:

```bash
# syntax 1:
(gdb) !ls

# syntax 2:
(gdb) shell ps
  PID TTY          TIME CMD
 1024 pts/6    00:00:00 zsh
25575 pts/6    00:00:00 gdb
25670 pts/6    00:00:00 ps
```

## `gdb-dashboard`

https://github.com/cyrus-and/gdb-dashboard

GDB dashboard is a useful debugger TUI for `gdb`. These are useful commands to set in `.gdbinit`:

```bash
# hide certain sections using '!' before section name
dashboard -layout !assembly breakpoints expressions history !memory !registers stack variables source !threads
# show more source code lines (default is 10)
dashboard source -style height 20
# full variables view
dashboard variables -style compact False
dashboard variables -style align True
# bold current line
dashboard source -style highlight-line True
# highlight current line in gray:
dashboard -style style_selected_1 '47;3;1'
# syntax coloring
dashboard -style syntax_highlighting 'xcode'
```

### Expressions
Expressions are a way to see (watch) variables. Unlike watchpoints, execution does not stop when they change. This makes them more similar to vscode's `watch` section than gdb's watchpoint.

Syntax:
```bash
# add watch
dashboard expressions watch myVariable
dashboard expressions watch "ptr->value"
dashboard expressions watch "array[i]"

# remove watch
dashboard expressions unwatch myVariable

# clear all watches
dashboard expressions clear
```

## `.gdbinit`
The .gdbinit file contains a list of gdb commands to execute upon gdb startup.

### Custom gdbinit location
By default, gdb searches a user's home directory for a `.gdbinit` file to apply. To override this and provide a custom path, start `gdb` with the `-x` flag:
```bash
gdb -x /path/to/custom/gdbinit my_program
```

### Command history
Include `set history save` in `.gdbinit` to save command history across gdb sessions. This creates a `gdb_history` file.

## Crash dumps
To debug a crash dump, use `gdb <binary> <path/to/coredump>`. Ex:
```bash
$ gdb my_crash /path/to/dump
```

Note: if crash dumps are managed by `coredumpctl`, use `coredumpctl debug <id>`. See [coredumpctl]().

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

## Resources
- https://sourceware.org/gdb/current/onlinedocs/gdb.html/Set-Watchpoints.html
- https://youtu.be/-n9Fkq1e6sg
- https://youtu.be/V1t6faOKjuQ
- https://youtu.be/dtPlx-Tn3mM
