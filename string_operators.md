# String Operators

## String concatenation
There are multiple ways to concatenate strings.

```bash
s1='hello'
s2='world'

# adjacency
result="$s1 $s2"  # result="hello world"

# curly braces
result="${s1} ${s2}"  # result="hello world"

# += operator
s1+=" $s2"  # s1="hello world" (modifies s1)
```

## Comparison operators
```
[ $a = $b ] Equality
  [ -z $a ] Check if length zero (empty)
     [ $a ] Check if length is non-zero (non-empty)
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
if [ -z $b ]
then
    echo 'b has zero length'
fi

# check non-zero length
if [ $c ]
then
    echo 'c has non-zero length'
fi

# run script above
$ ./string_ops.sh
a=b
b has non-zero length
c has zero length
```
