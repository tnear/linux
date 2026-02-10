# exit

`exit` - cause the shell or script to exit

## Basic usage
```bash
echo 'successfully exiting...'
exit
```

```bash
# explicit success return code (0)
echo 'successfully exiting...'
exit 0
```

```bash
# unsuccessful code (should be between 1-255)
echo 'unsuccessfully exiting...'
exit 1
```
