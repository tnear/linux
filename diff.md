# diff

`diff` - compare files line by line

See also: [`patch`](patch.md)

## Example

```bash
# Create two different files
printf 'apple\nbanana\ncherry\ndate\n' > file1.txt
printf 'apple\nblueberry\ncherry\nelderberry\n' > file2.txt

# Compare them
diff file1.txt file2.txt
```

| file1.txt | file2.txt  |
|-----------|------------|
| apple     | apple      |
| banana    | blueberry  |
| cherry    | cherry     |
| date      | elderberry |

Output:
```
2c2
< banana
---
> blueberry
4c4
< date
---
> elderberry
```

### Annotation

- `2c2` means "line 2 `c`hanged" (in both files)
- `<` marks the line from the first file (`file1.txt`)
- `---` separates the two versions
- `>` marks the line from the second file (`file2.txt`)

So here, line 2 went from `banana` -> `blueberry`, and line 4 went from `date` -> `elderberry`. `diff` only reports what changed.

## Unified diff

Unified diff (`-u`) is commonly used instead of vanilla `diff` for patching and version control.

```bash
$ diff -u file1.txt file2.txt
--- file1.txt   2026-08-18 10:00:00
+++ file2.txt   2026-08-18 10:00:01
@@ -1,4 +1,4 @@
 apple
-banana
+blueberry
 cherry
-date
+elderberry
```

- `---`: left file (older)
- `+++`: right file (newer)
- `@@ -1,4 +1,4 @@`: hunk header (locates chunk of changes)
  - `@@`: delimiter
  - `-1,4`: in old file (file1.txt, `-`), hunk starts at line 1 and spans 4 lines
  - `+1,4`: in new file (file2.txt, `+`), hunk starts at line 1 and spans 4 lines
- `-`: line removed
- `+`: line added
- ` `: (no prefix) unchanged line

### Side-by-side diff

Use `-y`:

```bash
$ diff -y file1.txt file2.txt
apple                            apple
banana                         | blueberry
cherry                           cherry
date                           | elderberry
```
