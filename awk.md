AWK

gawk - GNU AWK - pattern scanning and processing language

# Create a file:
$ ll > ll.txt

# Print each line of file:
$ awk '{print}' ll.txt

# Print lines matching a regex pattern:
$ awk '/root/ {print}' ll.txt

# Get fist and third fields (delimited by whitespace):
# (note: $0 represents entire line)
$ awk '{print $1,$3}' ll.txt
drwxr-xr-x kali
brw-r--r-- root

# NF = number of fields
# Print the number of fields and the last field ('$NF') of each record (separated by '-'):
$ awk '{print NF " - " $NF}' ll.txt
2 - 56
9 - ll.txt
9 - long_line.txt
10 - my_block_device

# Print lines less than 50 characters ($0 = entire line):
$ awk 'length($0) < 50' ll.txt
total 56
-rw-r--r-- 1 kali kali    0 Jun 21 10:08 ll.txt
-rw-r--r-- 1 kali kali  547 Jun 21 10:07 ls.txt

# Print lines whose second field ($2) is greater than 2 (i.e., number of hard/soft links > 2):
$ awk '$2 > 2' ll.txt

# Sum 1 to 100:
$ seq 1 100 > seq.txt
# ($1 = field 1, END statements are executed after input is exhausted)
$ awk '{s+=$1} END {print s}' seq.txt
5050

# --MATCH-- #
# Print morning timestamps:
#   $0            = search entire line
#   regex pattern = /0[0-9]:[0-9]{2}/
#   arr           = variable array to accumulate data
#   arr[0]        = Zero index is entire matched string (higher indexes are the capture groups)
$ awk 'match($0, /0[0-9]:[0-9]{2}/, arr) { print arr[0] }' ll.txt
08:24
09:58

---