STRING_OPERATORS

# String concatenate using variable substitution:
$ STR='str'
$ STRING="${STR}ing"
$ echo $STRING
string

# String operators:
[ $a = $b ] Equality
  [ -z $a ] Check if length zero
     [ $a ] Check if length is non-zero

# Example:
$ cat string_ops.sh
a='a'
b='a'
c=''

# Equality
if [ $a = $b ]
then
    echo 'a=b'
fi

# Check non-zero length (-z)
if [ -z $c ]
then
    echo 'c has zero length'
fi

# Check non-zero length
if [ $b ]
then
    echo 'b has non-zero length'
fi

# Run script:
$ ./string_ops.sh
a=b
c has zero length
b has non-zero length

---