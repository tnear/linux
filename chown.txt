CHOWN

chown - change owner - change file owner and group

# Create a file owned by self:
$ touch file.txt
$ ll !$
-rw-r--r-- 1 kali kali 0 Mar 24 17:24 file.txt

# Change owner to 'nobody':
$ sudo chown nobody file.txt

$ ll file.txt
-rw-r--r-- 1 nobody kali 0 Mar 24 17:26 file.txt

---