MKNOD

mknod - make node (inode) - make block or character special files

# b = create block device:
# sudo mknod path/to/device_file b major_device_number minor_device_number
$ sudo mknod my_block_device b 2 1
$ ll my_block_device
brw-r--r-- 1 root root 2, 1 Jun 21 10:03 my_block_device

# c = character device:
# sudo mknod path/to/device_file c major_device_number minor_device_number

# p = FIFO device:
# sudo mknod path/to/device_file p

---