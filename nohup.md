# nohup

`nohup` - run a command immune to hangups, with output to a non-tty

nohup is a POSIX command which means "no hang up". Its purpose is to execute a command such that it ignores the HUP (hangup/SIGHUP) signal and therefore does not stop when the user logs out.

Output that would normally go to the terminal goes to a file called nohup.out, if it has not already been redirected.

## Usage
```bash
$ nohup myProgram & # run program in background
$ exit
```

## Resources
- https://en.wikipedia.org/wiki/Nohup
