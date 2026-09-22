# wget

`Wget` - World Wide Web get - The non-interactive network downloader.

See also: [`curl`](curl.md)

## Basic usage
```bash
# (default) download page as 'index.html'
$ wget example.com

# download page as 'example.html' using -O (--output-document)
$ wget -O example.html example.com

# -m, --mirror: download entire website recursively (creates directory)
$ wget -m example.com
$ cd example.com
```
