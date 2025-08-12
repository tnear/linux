LN

ln - make links between files

--Hard link--
Associate the file name with the i-node.
Creating a link increments reference count of i-node.

# Create hard link:
$ ln <orig file path> <new path>

$ touch a.txt
$ ll a.txt
-rw-r--r-- 1 kali Aug 17 a.txt

$ ln a.txt aLink.txt

# List files and include i-node number (-i):
$ ll -i a*.txt
2754 -rw-r--r-- 2 kali aLink.txt
2754 -rw-r--r-- 2 kali a.txt


--Soft (symbolic) link--
Creates a special shortcut file (like Windows).
Uses pathname resolution to store a string path to file.
A symlink to an existing file will fail if the file is moved or renamed.

$ ln -s <file to point to> <new path>

$ ln -s a.txt aLink.txt

# List files. Note:
#   - The 'lrwx' permissions for the soft link
#   - Its pointer to its linked file
#   - Its unique i-node number
$ ll -i a*.txt
1712 -rw-r--r-- 1 kali a.txt
1713 lrwxrwxrwx 1 kali aLink.txt -> a.txt

$ rm a.txt   # breaks symlink (changes coloring of 'ls')

---