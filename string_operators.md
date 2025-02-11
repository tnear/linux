# String Operators

## String concatenate using variable substitution
```bash
$ STR='str'
$ STRING="${STR}ing"
$ echo $STRING
string
```

## String concatenation
There are multiple ways to concateneate strings.

```bash
s1='hello'
s2='world'

# adjacency
result="$s1 $s2"  # result="hello world"

# curly braces
result="${s1} ${s2}"  # result="hello world"

# += operator
s1+="$s2"  # s1="helloworld" (modifies s1)
```

## Comparison operators
```
[ $a = $b ] Equality
  [ -z $a ] Check if length zero
     [ $a ] Check if length is non-zero
```

### Example
```bash
$ cat string_ops.sh
a='a'
b='a'
c=''

# equality
if [ $a = $b ]
then
    echo 'a=b'
fi

# check non-zero length (-z)
if [ -z $c ]
then
    echo 'c has zero length'
fi

# check non-zero length
if [ $b ]
then
    echo 'b has non-zero length'
fi

# run script above
$ ./string_ops.sh
a=b
c has zero length
b has non-zero length
```
