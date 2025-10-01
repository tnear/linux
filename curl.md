# curl

`curl` - cURL - Client URL - transfer a URL

## Output web page HTML
```bash
# basic usage
$ curl example.com

# Output to file using redirect:
$ curl example.com > example.html
```

### Get headers only
Use `-I, --head` to fetch headers only.
```bash
$ curl -I google.com
```
Content-Length: 219

### Output to file
Use `-O, --remote-name` to output to a file.
```bash
# download index.html
$ curl -O example.com/index.html

# use lowercase -o to specify a custom file name
$ curl -o example.html example.com
```

### Verbose
Use `-v, --verbose` to show additional information (such as headers)

```bash
# show header information, dump html content to /dev/null
$ curl -v example.com > /dev/null
```

### Silent
Use `-s, --silent` to avoid printing progress meter or errors.
```bash
curl -s example.com
```

### Authentication
Use `-u` to specify `user:password`.
```bash
$ curl -u demo:password ftp://test.rebex.net
```

### Header information
Use `-H, --header` to send extra header information.
```bash
curl -H "X-First-Name: Joe" https://example.com
```

### Follow page moves to a different location
Use `-L, --location` to make curl redo a request at the new location.

```bash
curl -L https://example.com
```

## FTP

```bash
$ curl ftp://ftp.slackware.com/welcome.msg
```
