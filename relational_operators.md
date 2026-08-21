# Relational Operators

See also: [String Operators](string_operators.md)

## Integers
Integers support these relational operators: `-gt`, `-eq`, `-ne`, `-gt`, `-lt`, `-ge`, `-le`

### Example
```bash
NUM1=10
NUM2=20
if [ "$NUM1" -lt "$NUM2" ]; then
    echo "$NUM1 is less than $NUM2"
fi
```
