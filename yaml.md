# YAML

YAML is a data serialization language commonly used in configuration files.

## List example

```yaml
--- # favorite movies
- Movie 1
- Movie 2

--- # inline format list
[Movie 1, Movie 2]
```

### Description
- `---`: document separator
- `#`: comment begin
- `-`: list member
- `[]`: inline format with list members separated by comma and space


## Keys and values
```yaml
--- # indented Block
  name: John Smith
  age: 33
--- # inline Block
{name: John Smith, age: 33}
```

- `name`: key
- `John Smith`: value

## Strings
Strings optionally can be enclosed in quotation marks.

Multi-line strings begin with the `|` character:
```yaml
commands: |
    cat /hello/world
    echo 'hello' 'world'
```

## Anchors and aliases
YAML anchors (`&`) and aliases (`*`) are used for reusing content in YAML files.

### Value reuse
```yaml
default_path: &my_path       /usr/local/bin
install_path: *my_path       # references /usr/local/bin
backup_path: *my_path/backup # combines with additional text
```

### List reuse
```yaml
base_commands: &commands
  - apt-get update
  - apt-get upgrade

task1:
  commands: *commands    # uses entire list

task2:
  commands:
    - *commands          # includes base commands
    - custom command     # adds extra command
```


## Resources
- https://en.wikipedia.org/wiki/YAML
