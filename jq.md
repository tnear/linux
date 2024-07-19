# jq

jq - Command-line JSON processor

## Pretty-print a JSON string
The expression `jq '.'` converts input to output with no changes. The `'.'` portion can be left off in this example.

```
$ echo '{"fruit":{"name":"apple","color":"green","price":1.20}}' | jq '.'
{
  "fruit": {
    "name": "apple",
    "color": "green",
    "price": 1.20
  }
}
```

## `jq` on a file
```
$ echo '{"fruit":{"name":"apple","color":"green","price":1.20}}' > fruits.json
$ jq '.' fruits.json
```

## Select fields
```
$ jq '.fruit' fruits.json
{
  "name": "apple",
  "color": "green",
  "price": 1.20
}
```

```
$ jq '.fruit.price' fruits.json
1.20
```

## Arrays
The examples below all use this data:
```
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

### Iterate over array
The syntax `.[]` iterates over an array of data.

This example iterates over the array and gets all the `name` fields:
```
$ jq '.[].name' fruits.json
"apple"
"banana"
"kiwi"
```

## Index into array
The syntax `.[0]` gets the zeroth element of an array:
```
$ jq '.[0]' fruits.json
  "name": "apple",
  "color": "green",
  "price": 1.2
}
```

### Get price of idx=2 in array
```
$ jq '.[2].price' fruits.json
1.25
```

## Resources
- https://jqlang.github.io/jq/
- https://www.baeldung.com/linux/jq-command-json
