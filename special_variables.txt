SPECIAL_VARIABLES

Special shell variables.

# Exit status of last command: $?. 0 = no error:
$ fake_cmd
$ echo $?
127

# Shell script which uses numerous special variables:
$ cat special_variables.sh
#!/usr/bin/zsh
# https://www.tutorialspoint.com/unix/unix-special-variables.htm
echo "File Name: $0"
echo "First Parameter: $1"
echo "Second Parameter: $2"
echo "Quoted Values: $@"
echo "Quoted Values: $*"
echo "Total Number of Parameters: $#"

# Run above script:
$ ./special_variables.sh hello world
File Name: ./special_variables.sh
First Parameter: hello
Second Parameter: world
Quoted Values: hello world
Quoted Values: Hello world
Total Number of Parameters: 2

---