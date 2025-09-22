ENV

env - run a program in a modified environment

# Print all environment variables:
$ env
COLORFGBG=15;0
COLORTERM=truecolor
<...>

# Create environment variable and pass to subprocess:
$ bash -c 'echo $QQQQ'
<no output>
$ env QQQQ=101 bash -c 'echo $QQQQ'
101

---