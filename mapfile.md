# mapfile

`mapfile` - Read lines from the standard input into the indexed array variable

## Read file into array of strings
```bash
# create a file with 3 lines
echo -e 'Line 1\nLine 2\nLine 3' > lines.txt

# use mapfile to read file into a string array
# the '-t' flag remove trailing delimiter (default newline)
mapfile -t lines < lines.txt

# output first line
echo ${lines[0]} # outputs 'Line 1'

# output all lines separated by space
echo ${lines[*]} # outputs "Line 1 Line 2 Line 3"
```

## Resources
- https://medium.com/@linuxadminhacks/understanding-mapfile-command-in-linux-9a13a2e2008a
- https://www.shellcheck.net/wiki/SC2207
