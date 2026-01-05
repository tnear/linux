RM

rm - remove files or directories

# Remove file:
$ rm file.txt

# Remove multiple files:
$ rm f1 f2 f3

# -r = recursive remove
# Needed to remove non-empty directories:
$ rm -r my_directory

# -f = force. Remove directory and do not prompt. Also suppresses errors.
# Useful for deleting local git repositories:
$ rm -rf my_repository

---