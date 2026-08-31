# finger

`finger` - user information lookup program

See also: [`w`](w.md), [`who`](who.md)

## Lookup currently logged in users
```bash
$ finger
Login    Name      Tty    Idle  Login Time
user     My Name   tty7    24d  Feb 20 08:05
user2              s001    1:58 Sep 29 08:21

# look up specific user
$ finger root
Login: root                             Name: root
Directory: /root                        Shell: /usr/bin/zsh
Never logged in.
```
