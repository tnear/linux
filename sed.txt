SED

sed - stream editor for filtering and transforming text

# Usage:
sed <flag1 flag2 etc> <pattern> <file>

# Pattern:
<pattern> = 's/SEARCH_REGEX/REPLACEMENT/gi'
s = substitute
g = global replacement
i = case insensitive
d = (not shown) delete line

# Common flags:
-i = in-place (write to file) instead of stdout
-E = -r = extended regex, do not need to escape '(', ')', '+', '?'

# Replace multiple consecutive spaces with single space:
$ ps | sed -E 's/ +/ /g'

# Detect 'a' followed by digits then replace 'a' with 'abc'.
# This matches the digits in a capture group using '()' then
# backreferences the first group using \1.
# Note: uses [0-9] because '\d' is not supported:
$ echo 'a123 a456 a' > file.txt
$ sed -i -E 's/a([0-9]+)/abc\1/g' file.txt
$ cat file.txt
abc123 abc456 a

# Case insensitive replace of 'ZSH' -> 'bash' (note the 'i' suffix):
$ ps | sed -E 's/ZSH/bash/gi'
    PID TTY          TIME CMD
 679036 pts/1    00:00:48 bash

# Chain commands using ';'. Replace 'abc' and '123':
$ echo 'abc 123' > file.txt
$ sed 's/abc/xyz/g; s/123/789/g' file.txt

# Delete lines beginning with 'Hello' using 'd' suffix:
$ echo 'Hello\nWorld!' > file.txt
$ sed '/^Hello/d' file.txt
World!

# Get word counts of a file. This pattern replaces spaces (\s) with newlines (\n).
# Once the data is newline delimited, tools such as sort/uniq work natively:
$ sed -E 's/\s/\n/g' < file.c | sort | uniq -c
    1 enough
    3 entries
    2 Entries
    9 entry

# Trim everything after colon in timestamp by using an empty replacement:
ll | awk '{print $8}' | sed -E 's/:.*//'
17
10
<truncated>

---