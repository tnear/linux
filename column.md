# column

`column` - columnate lists

## `-t, --table` = format output as a table
```bash
$ printf 'header1 header2\ndata1 data2' > file.txt

# cat does not align columns:
$ cat file.txt
header1 header2
data1 data2

# column -t aligns columns:
$ column -t file.txt
header1  header2
data1    data2
```

## `-s, --separator` = specify separator character (for inputs)
```bash
# Create CSV-file:
$ printf 'header1,header2\ndata1,data2' > file.csv

# Create table from CSV-file:
$ column -t -s ',' file.csv
header1  header2
data1    data2
```

## `-o, --output-separator`
The default output separator is two spaces.

```bash
printf 'header1 header2\ndata1 data2' > file.txt

# separate columns with '|'
$ column -t file.txt -o ' | '

header1 | header2
data1   | data2
```
