# jq

`jq` - command-line JSON processor

## Sample data
All examples use `fruits.json`:

```json
{
  "fruits": [
    {
      "name": "apple",
      "color": "green",
      "price": 1.2
    },
    {
      "name": "banana",
      "color": "yellow",
      "price": 0.5
    },
    {
      "name": "kiwi",
      "color": "green",
      "price": 1.25
    }
  ]
}
```

## Pretty-print
The identity filter, `.`, outputs JSON unchanged and pretty-prints it. The syntaxes `| jq`, `| jq .`, and `| jq '.'` are equivalent.

```bash
$ jq '.' fruits.json
```

## Raw output (`-r`)
Use `-r` to write strings to stdout without JSON quotes.

```bash
# with -r (outputs no quotes)
$ jq -r '.fruits[0].name' fruits.json
apple

# without -r
$ jq '.fruits[0].name' fruits.json
"apple"
```

## Constructing JSON without a file (`-n`)
```bash
$ jq -n '{"name": "John", "age": 30}'
```

## Selection

### Index into array
Use `[]` to work with arrays.
- `[]`: get every element
- `[0]`: get zeroth index
- `[0:2]`: slice: get elements `0` and `1` (but not `2`)

```bash
$ jq '.fruits[0]' fruits.json
{
  "name": "apple",
  "color": "green",
  "price": 1.2
}
```

### Access a nested field
```bash
# dot-chaining
$ jq '.fruits[0].price' fruits.json
1.2

# pipe syntax is equivalent
$ jq '.fruits[0] | .price' fruits.json
1.2
```

### Multiple fields
Use `| {field1, field2, ...}`

```bash
# get name and color fields of zeroth element
$ jq '.fruits.[0] | {name, color}' fruits.json
{
  "name": "apple",
  "color": "green"
}
```

## Arrays

### Iterate over array
Use `.field[]` iterates over every element in the array.

```bash
$ jq '.fruits[].name' fruits.json
"apple"
"banana"
"kiwi"
```

### Array length
```bash
$ jq '.fruits | length' fruits.json
3
```

### Filter by value
```bash
# names of fruits with price > 1
$ jq '.fruits[] | select(.price > 1) | .name' fruits.json
"apple"
"kiwi"
```

## Resources
- https://jqlang.github.io/jq/
- https://www.baeldung.com/linux/jq-command-json
