# bash

`bash` - GNU Bourne-Again SHell

## -c = command to run
```
$ bash -c 'echo hello'
hello

# OR:
$ zsh -c 'echo hello'
```

## -x = execution trace (xtrace) mode
The `-x` flag creates verbose output for debugging scripts:
```
$ cat script.sh
#!/bin/bash
echo 'Starting script'
echo 'Hello, world!'
echo 'Script completed'

$ bash -x script.sh
+ echo 'Starting script'
Starting script
+ echo 'Hello, world!'
Hello, world!
+ echo 'Script completed'
Script completed
```

^The '+' sign denotes the command about to be run

## subshell
To create a subshell, which is a child process of current shell, enclose statements in parentheses:
```
(cd path/to/dir && make)
```

This will change directory in a subshell then `make`. This does not change the directory of the current shell.
