SWAPON

swapon, swapoff - enable/disable devices and files for paging and swapping

# Create 10MB file:
$ sudo fallocate -l 10MB /testswap

# Update permissions:
$ sudo chmod 600 /testswap

# Setup swap area for file:
$ sudo mkswap /testswap

# Enable swapping:
$ sudo swapon /testswap

# -s = display summary:
$ swapon -s
Filename       Type    Size       Used    Priority
/swapfile      file    1048572    0       -2
/testswap      file    9760       0       -3

# Disable swapping when done:
$ sudo swapoff /testswap

# Remove swap file:
$ sudo rm /testswap

---