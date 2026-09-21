WGET

Wget - World Wide Web get - The non-interactive network downloader.

See also: [`curl`](curl.md)

# (default) Download page as 'index.html':
$ wget example.com

# Download page as 'example.html' using -O (--output-document):
$ wget -O example.html example.com

# -m, --mirror: download entire website recursively (creates directory):
$ wget -m northwestern.edu
$ cd northwestern.edu

---