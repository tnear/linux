# set

`set` changes values of shell options and display variables in scripts.

Syntax: `$ set [option] [argument]`

See also: [`bash`](bash.md)

## Command options

### `-e`, exits script upon errors
```bash
set -e  # set up error detection
cat fake_file
echo 'execution does not reach here due to -e option'
```

### `-x`, annotates execution
The `-x` flag is useful for debugging scripts.

```bash
set -x

<run script, see this debug output:>
$ bash debugging.sh
+ n=3
+ '[' 3 -gt 0 ']'
+ n=2
+ echo 2
2
+ sleep 1
+ '[' 1 -gt 0 ']'
+ n=0
+ echo 0
0
```

#### `-o xtrace`
This is an alternative syntax for `set -x`.

#### `-o pipefail`
Makes a pipeline fail if any command fails (not just the last one).

```bash
# without pipefail, this returns 0 (success) because
# last command (true) succeeds
$ false | true
echo $?
0
$ false
echo $?
1
```

### `-a`, exports functions and variables in script
The `-a` flag is useful for creating variables or functions in a script and then having them available after the script runs.

```bash
set -a
name='hello'

# <run script>
# this exports the 'name' variable to the shell:
$ echo $name
hello
```

### `-u`: unset variables
Use `set -u` to treat unset variables as an error. Without `-u`, this would NOT error if `$MY_VAR` had no value: `echo $MY_VAR`.

## `+[arg]`
The `+[arg]` syntax *disables* a `set` option. For example, `set +x` *disables* output debugging. `set +e` *continues* running in case of errors.

## Resources
- https://www.baeldung.com/linux/set-command
