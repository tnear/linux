MKFIFO

mkfifo - make FIFOs (named pipes)

# Create a named pipe:
$ mkfifo my_pipe

# Display its attributes (note the 'p' attribute):
$ ll my_pipe
prw-r--r-- 1 kali kali 0 Jun 21 09:53 my_pipe

# Write to named pipe:
$ ls > my_pipe

# In terminal 2, read from my_pipe:
$ cat < my_pipe
<output of 'ls' here>

---