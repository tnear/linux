# pushd

`pushd` - Push directory onto directory stack.

See also: [`dirs`](dirs.md)

## Basic workflow
```bash
# push pwd onto stack
[/var] $ pushd .
/var

# Next, navigate away:
$ cd /etc

# Then return to old pwd (/var):
[/etc] $ popd
[/var] $
```

## Push pwd onto stack and navigate elsewhere in one step
```bash
[~] $ pushd /var/www
[/var/www] $ popd
[~] $
```

## View directory stack
```bash
$ pushd /lib
$ pushd /var
$ pushd /etc

# -v = vertical view of stack:
$ dirs -v
0       /etc
1       /var
2       /lib
3       ~
```
