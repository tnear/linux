EGREP

egrep - extended GREP
Same as grep -E

# Without -e, this matches nothing (except self):
$ ps -aux | \grep '(root|kali)'

# With -e (or EGREP), matches all ROOT or KALI processes:
$ ps -aux | grep -e '(root|kali)'

---