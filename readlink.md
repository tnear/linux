READLINK

readlink - print resolved symbolic links or canonical file names

# Resolve symbolic link:
$ touch a.txt
$ ln -s a.txt soft.lnk
$ readlink soft.lnk
a.txt

---