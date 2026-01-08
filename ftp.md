# ftp

`ftp` — Internet file transfer program

**Note**: `ftp` transmits passwords in plain text. For secure transfers, prefer [`sftp`](sftp.md).

## Connect to FTP server address
```bash
$ ftp 192.0.0.1
$ ftp ftp.example.com

# or specific port
$ ftp ftp.example.com 21
```

## Basic session
```bash
# List files in current directory
ftp> ls
ftp> dir

# Change directory
ftp> cd /path/to/directory

# Print current directory
ftp> pwd

# Download a file
ftp> get filename.txt

# Download multiple files
ftp> mget *.txt

# Upload a file
ftp> put localfile.txt

# Upload multiple files
ftp> mput *.txt

# Change local directory
ftp> lcd /local/path

# Delete a file on server
ftp> delete filename.txt

# Create directory on server
ftp> mkdir new_folder

# Remove directory on server
ftp> rmdir folder_name

# Exit FTP
ftp> bye
# or
ftp> quit
```
