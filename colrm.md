# colrm

`colrm` - remove columns from a file

Syntax: `colrm [start_column] [end_column]`

## Basic usage

Column numbering starts at `1` (not `0`).

```bash
# remove column 1 by specifying as start and end column
echo 'test' | colrm 1 1  # outputs 'est'

# remove columns 3 to end
echo 'abcdef' | colrm 3  # outputs 'ab'
```
