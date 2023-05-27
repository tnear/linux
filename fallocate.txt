FALLOCATE

fallocate - preallocate or deallocate space to a file

This is much faster than creating a file by filling it with zeroes.

# -l = length
# Preallocate a 100-byte file:
$ fallocate -l 100 my_file

# Preallocate 10MB file:
$ fallocate -l 10MB my_mb_file

---