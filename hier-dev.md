HIER-DEV

/dev
Special or device files. Usually hardware represented as a file.

/dev/mem
$ man mem
Main (physical) memory in file form. Root-protected.


/dev/null
$ man null
Data sink. Discards everything written to it. Useful to suppress output.

# Produces messy output due to permission denied errors:
$ grep -r hello /sys/

# Direct stderr to /dev/null to ignore permission errors:
$ grep -r hello /sys/ 2> /dev/null

# Suppress successful pings so that only errors appear in terminal:
$ ping google.com > /dev/null


/dev/urandom
# RNG generation. u = unlimited.
# More suited for cryptographic applications than /dev/random.
# Read random data:
$ read RAND < /dev/urandom
# echo $RAND
����vx�E�� Z��%�+˴

---