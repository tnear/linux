# ll

`ll` - Long List. Alias for 'ls -l'

## Alias
```bash
$ alias ll
ll='ls -l'
```

## Field meanings
```
-rwxrw-r--    10    user   root 2048    Jan 13 07:11 afile.exe
?UUUGGGOOOS   00  UUUUUU GGGGGG ####    MON DD XX:XX FILENAME
^ ^  ^  ^ ^    ^      ^      ^    ^      ^           ^- Filename
| |  |  | |    |      |      |    |      \------------- Time of last modification
| |  |  | |    |      |      |    \-------------------- File or directory size
| |  |  | |    |      |      \------------------------- Group Name (ex:, Users, Admins)
| |  |  | |    |      \-------------------------------- Owner Acct
| |  |  | |    \--------------------------------------- Link count
| |  |  | \-------------------------------------------- Alt access (blank means none defined)
| \--\--\---------------------------------------------- R/W/Special modes for User, Group, Others
\------------------------------------------------------ File type flag

(source: https://unix.stackexchange.com/questions/103114/what-do-the-fields-in-ls-al-output-mean)
```
