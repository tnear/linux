TREE

tree - list contents of directories in a tree-like format.

$ mkdir test; cd test; touch file.txt; cd ..;
$ tree test
test
└── file.txt


# -P = pattern
# Print all .c files in home directory (~) or beneath:
$ tree -P '*.c' ~

# -L = level
# Print up to two levels:
$ tree -L 2

---