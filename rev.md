REV

rev - reverse lines characterwise

# Reverse characters on each line:
$ echo 'abc\n123' > f.txt
$ rev f.txt
cba
321

# Reverse line:
$ echo 'one two three' | rev
eerht owt eno

# Get last word of line. By reversing then cutting field 1 (-f1),
# then reversing again, this gets the last word of each line:
$ echo 'get last word\nline two' | rev | cut -f1 -d ' ' | rev
word
two

---