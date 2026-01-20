# Here Document

A here document (heredoc) refers to a special block of code that contains multi-line strings that will be redirected to a command.

Here documents are denoted by `<<` followed by a token, often `EOF`. Reading stops upon encountering that token.

See also: [`tee`](tee.md)

## Write to file
```bash
$ cat << EOF > my_file.txt
data here
EOF

$ cat my_file.txt
data here
```

### Write to file as root user
Use [`tee`](tee.md):

```bash
$ sudo tee my_doc > /dev/null << EOF
data here
EOF
```

## Count number of lines
```bash
$ wc -l << EOF
heredoc> as sdf sdf awef
heredoc> a wefwae fawe fawef
heredoc> EOF
2
```

Answer is 2 because there are two newlines encountered between `EOF`.

## Pipe output of heredoc to another command
Place `|` after the first `EOF` token.
```bash
cat << EOF | jq
{
    "name": "John",
    "age": 30,
    "hobbies": ["reading", "coding"]
}
EOF
```

Output:
```json
{
  "name": "John",
  "age": 30,
  "hobbies": [
    "reading",
    "coding"
  ]
}
```

## Resources
- https://www.baeldung.com/linux/heredoc-herestring
