DIFF

diff - compare files line by line

# compare two files:
$ diff ps1.txt ps2.txt

16c17 meaning:
16: line number first file
c: change (a = add, d = delete)
2nd 17: line number second file

2,3c3 meaning:
Lines 2 to 3 in file 1 need to be Changed to match line 3 in file 2

4d3 meaning:
Line 4 in file 1 needs to be Deleted to match line 3 in file 2

# -c = show context
$ diff -c file1.txt file2.txt
*** file1.txt   2022-08-28 16:21:04.226336213
--- file2.txt   2022-08-28 16:21:11.218276532
*** 1,4 ****
  apples
- oranges
  kiwis
  carrots
--- 1,4 ----
  apples
  kiwis
  carrots
! carrots2
+ grapefruits

*** = from file (1st file in diff command)
--- = to file   (2nd file in diff command)
- oranges     = oranges has been Deleted from file
+ grapefruits = grapefruits have been Added to file
! carrots2    = line has been Changed

---