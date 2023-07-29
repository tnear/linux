STICKY

Only file owner can rename or delete files inside directory with sticky bit.

# Use chmod to set sticky bit.
$ chmod +t my_dir
OR
$ chmod 1777 my_dir

# Verify 't' flag in permissions. 'ls' highlights sticky directories in blue:
$ ll -d my_dir
drwxr-xr-t 2 kali kali 4096 Mar 25 16:31 my_dir

---