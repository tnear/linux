# export

`export` — set the export attribute for variables

`export` can be used to make shell variables available to subprocesses.

See also: [`unset`](unset.md)

## List all exported variables
```bash
$ export
```

## Create environment variable
```bash
$ export QQQQ=101
$ printenv QQQQ
101
```

## Make environment variable available sub-shell:
```bash
# alt two-line syntax to export
$ QQQQ=101
$ export QQQQ

# use bash -c flag to forward environment variable
$ bash -c 'echo $QQQQ'
101
```

## Clear environment variable
```bash
$ unset QQQQ
```
