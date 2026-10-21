# sha1sum

`sha1sum` - compute and check SHA1 message digest

See also: [`sha256sum`](sha256sum.md)

## SHA-1 collision

SHA-1 is no longer considered cryptographically secure. Use SHA-2 or SHA-3 instead.

```bash
demo_dir=$(mktemp -d)
trap 'rm -rf -- "$demo_dir"' EXIT
cd "$demo_dir"

# two different PDFs with same sha-1 checksum
base='https://raw.githubusercontent.com/cr-marcstevens/sha1collisiondetection/master/test'
curl -fsSLO "$base/shattered-1.pdf"
curl -fsSLO "$base/shattered-2.pdf"

sha1sum shattered-*.pdf
sha256sum shattered-*.pdf

38762cf7f55934b34d179ae6a4c80cadccbb7f0a  shattered-1.pdf
38762cf7f55934b34d179ae6a4c80cadccbb7f0a  shattered-2.pdf
2bb787a73e37352f92383abe7e2902936d1059ad9f1ba6daaa9c1e58ee6970d0  shattered-1.pdf
d4488775d29bdef7993367d541064dbdda50d383f89f0aa13a6ff2e0894ba5ff  shattered-2.pdf
```
