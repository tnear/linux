# jq

`jq` - Command-line JSON processor

## Pretty-print a JSON string
The expression `jq '.'` converts input to output with no changes. The `'.'` portion can be left off in this example.

```bash
$ echo '{"fruit":{"name":"apple","color":"green","price":1.20}}' | jq '.'
{
  "fruit": {
    "name": "apple",
    "color": "green",
    "price": 1.20
  }
}
```

### `-r, --raw-output`
Use the `-r` flag to write to `stdout` instead of being formatted as a JSON string with quotes.

```bash
# with -r (no quotes)
$ jq -r '.fruit.name' fruits.json
apple

# without
$ jq '.fruit.name' fruits.json
"apple"
```

## Files
### No file
Use the `-n` flag to construct JSON without a file.

```bash
$ jq -n '{"name": "John", "age": 30}'
{
  "name": "John",
  "age": 30
}
```

### `jq` on a file
```bash
$ echo '{"fruit":{"name":"apple","color":"green","price":1.20}}' > fruits.json
$ jq '.' fruits.json
```

## Select fields
```bash
$ jq '.fruit' fruits.json
{
  "name": "apple",
  "color": "green",
  "price": 1.20
}
```

### Nested fields
```bash
$ jq '.fruit.price' fruits.json
1.20
```

## Arrays
The examples below all use this data:
```json
[
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
```

## Arrays

### Iterate over array
The syntax `.[]` iterates over an array of data.

This example iterates over the array and gets all the `name` fields:
```bash
$ jq '.[].name' fruits.json
"apple"
"banana"
"kiwi"
```

### Index into array
The syntax `.[0]` gets the zeroth element of an array:
```bash
$ jq '.[0]' fruits.json
  "name": "apple",
  "color": "green",
  "price": 1.2
}
```

### Get array length (number of elements)
```bash
# get number of elements of 'commands' array
$ cat file.json | jq '.commands | length'
```

### Get price of `idx=2` in array
```bash
$ jq '.[2].price' fruits.json
1.25
```

## Resources
- https://jqlang.github.io/jq/
- https://www.baeldung.com/linux/jq-command-json
