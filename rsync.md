RSYNC

rsync - a fast, versatile, remote (and local) file-copying tool

# -a, --archive: recursive copy, preserving all metadata (recommended)
# -v, --verbose: by default, sync is silent

# Copy all files from dir/ to newDir/:
# (rsync will create newDir if it doesn't exist)
$ rsync -av dir newDir/
sending incremental file list
created directory newDir
dir/
dir/hello.txt

sent 146 bytes  received 68 bytes  428.00 bytes/sec
total size is 6  speedup is 0.03

---