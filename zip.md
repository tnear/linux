# zip

`zip` - package and compress (archive) files

See also: [`gzip`](gzip.md), [`unzip`](unzip.md)

## Comparison with `gzip`
`gzip` is a single-file compression tool, while `zip` is an all-in-one archiver that bundles and compresses multiple files and folders together. `gzip` is usually used with `tar`.

## Basic usage

```bash
echo "hello" > file.txt
# compress data into zip
zip archive.zip file.txt

# list (-l) zip contents without extracting
unzip -l archive.zip

# use -d to extract to directory (will create directory)
unzip archive.zip -d my_dir
```
