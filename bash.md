# bash

`bash` - GNU Bourne-Again SHell

See also: [`set`](set.md)

## Common flags

### Command to run
Use `-c` to specify a command string.
```bash
$ bash -c 'echo hello'
hello

# or with zsh
$ zsh -c 'echo hello'
```

### Execution trace (xtrace) mode
The `-x` flag creates verbose output for debugging scripts.
```bash
$ bash -x script.sh
+ echo 'Starting script'
Starting script
+ echo 'Hello, world!'
Hello, world!
+ echo 'Script completed'
Script completed
```

The `+` character denotes the command about to be run.

### No execution mode
Use `-n` to run a syntax check.
```bash
# parse script without running any commands
$ bash -n my_script.sh
```

## subshell
To spawn a subshell, which is a child process of current shell, enclose statements in parentheses:
```bash
(cd path/to/dir && make)
```

This will change directory in a subshell then `make`. This does not change the directory of the current shell.
