# patch

`patch` - apply a diff file to an original

See also: [`diff`](diff.md), [`cmp.md`](cmp.md)

## Basic usage

```bash
# create two versions of a file
$ printf 'apple\nbanana\ncherry\n' > file_a.txt
$ printf 'apple\nBANANA\ncherry\ndate\n' > file_b.txt

# generate diff and patch file
# note: always use -u (unified) for patch files
$ diff -u file_a.txt file_b.txt > changes.patch
$ cat changes.patch
--- file_a.txt  2026-09-12 15:18:56.282528390 -0700
+++ file_b.txt  2026-09-12 15:18:56.282528390 -0700
@@ -1,3 +1,4 @@
 apple
-banana
+BANANA
 cherry
+date

# preview patch with dry-run
$ patch --dry-run file_a.txt < changes.patch
checking file file_a.txt

# patch file_a to so that it equals file_b
$ patch file_a.txt < changes.patch
patching file file_a.txt
$ cat file_a.txt
apple
BANANA
cherry
date

# compare files
$ cmp file_a.txt file_b.txt
# <no output because contents are identical>
```
