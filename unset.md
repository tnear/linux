# unset

`unset` — unset values and attributes of variables and functions

See also: [`declare`](declare.md)

## Basic usage
```bash
# Set an environment variable
$ PERSON='me'
$ echo $PERSON
me

# Unset (remove) environment variable
$ unset PERSON

# Show that it has been removed
echo $PERSON
<no output>
```
