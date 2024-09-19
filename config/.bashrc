# extended grep with line numbers and ignore directories
alias grep='grep -E -n --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn,.idea,.tox}'

# quiet gdb
alias gdb='gdb -q'

# case insensitive tab-completion
bind 'set completion-ignore-case on'
