# Special Variables

Special shell variables.

## Exit status of last command: $?. 0 = no error
$ fake_cmd
$ echo $?
127

## Shell script which uses numerous special variables
$ cat special_variables.sh
#!/usr/bin/zsh
# https://www.tutorialspoint.com/unix/unix-special-variables.htm
echo "File Name: $0"
echo "First Parameter: $1"
echo "Second Parameter: $2"
echo "Quoted Values: $@"
echo "Quoted Values: $*"
echo "Total Number of Parameters: $#"

## Run above script
$ ./special_variables.sh hello world
File Name: ./special_variables.sh
First Parameter: hello
Second Parameter: world
Quoted Values: hello world
Quoted Values: Hello world
Total Number of Parameters: 2

## Internal field separator
The internal field separator, IFS, is a special shell variable to determine how Bash recognizes word boundaries.

```bash
# set internal field separator to '='
# this is useful to split a string of the form: 'key=value'
IFS='='

# read 'key' and 'value' from each arg ('key=value').
# because IFS='=', this splits $arg into 'key' and 'value' from 'key=value'
read key value <<< "$arg"
```
