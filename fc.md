# FC

`fc` - fix command - processes the command history list.
 
`fc` tries the `$EDITOR` environment variable first.

## Example

```bash
# 'find' typo
$ fiQnd /usr/include -name '*.[hc]' | wc
Command 'fiQnd' not found

# use 'fc' to open a terminal editor to fix it
$ fc
<enter vim or other editor to fix then exit>
find /usr/include -name '*.[hc]' | wc
   9834    9834  445552
```
