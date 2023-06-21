TRUE

true - do nothing, successfully

# Run true and show success response (0):
$ true
$ echo $?
0

# Force exit status to be zero.
# If 'rmdir' fails, 'true' executes which has a 0 response:
$ rmdir <my_dir> || true

---