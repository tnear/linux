# curl

`curl` - Client URL - transfer a URL

See also: [`wget`](wget.md)

## Output web page HTML
```bash
# basic usage
$ curl example.com

# Output to file using redirect:
$ curl example.com > example.html
```

## Common flags
- `-I, --head`: fetch headers only
- `-O, --remote-name`: output to a file
- `-o`: specify custom file name
- `-v, --verbose`: show additional info
- `-s, --silent`: prevent printing progress meter and errors
- `-L, --location`: follow page redirects

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

## FTP

```bash
$ curl ftp://ftp.slackware.com/welcome.msg
```
