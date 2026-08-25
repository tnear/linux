# write

`write` - send a message to another user

See also: [`mesg`](mesg.md)

## Basic usage

```bash
# Login as 2nd user:
$ sudo login user1

# Enable messages:
$ user1@sys $ mesg y

# Send message from user2 to user1:
$ user2@sys $ write user1
hello, user1!

# 2nd user's receipt of message above:
$ user1@sys $
Message from user2@sys on pts/3 at 06:36 ...
hello, user1!
```
