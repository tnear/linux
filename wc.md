# wc

`wc` - word count - print newline, word, and byte counts for each file

Returns number of newlines, words, and characters in files

Syntax:
```
$ wc <file1> <file2> ...
```

## Get newlines | word count | num characters
This example retrieves newlines, word count, and number of characters for files beginning with "w":
```
$ wc w*
   0    0    0 wc.txt
   8   35  240 wget.txt
  12   39  254 whatis.txt
   7   22  177 whereis.txt
  21   51  313 which.txt
   7   22  139 who.txt
  11   50  309 w.txt
  66  219 1432 total
```

## Number of lines
Use `-l, --lines` to get the number of newline characters. This example also uses `sort` to get the most.
```
$ wc -l * | sort -n
      0 config
      0 README.md
      5 pkill.txt
      <...>
     43 hex.txt
     48 time.txt
     49 find.txt
   1557 total
```

## Get lines of code (LOC)
This example gets the number of lines of code for files with a .h or .c extension:
```
$ find /usr/include -name '*.[hc]' | xargs wc

  466181     1934876     17536397
newlines | word count | characters
```

This example gets lines of code for files with a .cpp or .h extension. It uses `-o` to do an OR constraint.
```
$ find . -type f \( -name '*.cpp' -o -name '*.h' \) | xargs wc

  224233  736557 9406531 total
newlines | word count | characters
```
