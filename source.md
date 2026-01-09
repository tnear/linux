SOURCE

Reads and executes the contents of a file (generally a set of commands)

'source' runs one line after another.

'source' runs in your current shell, while executing a script spawns a new shell.

# Reload .zshrc (must run in same shell):
source ~/.zshrc

# Run txt file with a list of commands:
$ cat cmds.txt
echo 'a'
echo 'b'
echo 'c'

$ source cmds.txt
a
b
c

# Time multiple commands defined in file (need to time current shell):
$ time (source fileWithCmds.txt) > /dev/null

---