EXPORT

export — set the export attribute for variables

export can be used to make shell variables available to subprocesses.

# Show all exported variables:
$ export

# Create new exported variable and assign value:
$ export QQQQ=101
$ printenv QQQQ
101

# Show that QQQQ is not available in sub-shell:
$ QQQQ=101
$ bash -c 'echo $QQQQ'
<no output>

# Now export QQQQ and see that '101' is displayed:
$ export QQQQ
$ bash -c 'echo $QQQQ'
101

# Clear environment variable when done:
$ unset QQQQ
$ bash -c 'echo $QQQQ'
<not output>

---