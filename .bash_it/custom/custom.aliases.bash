# Enable color support of ls and also add handy aliases
alias ls='ls --color=auto'
alias dir='dir --color=auto'
alias grep='grep --color=auto'

# Week number
alias week='date +%V'

alias memory-free='free -h'
alias users-logged-in='w -h'

# Print $PATH
alias paths='echo -e ${PATH//:/\\n}'

# Nice commands
alias ll='ls -alh --color'
alias tree='tree -Csu'
alias which='type -a'

# Disk space
alias ds='df -h | grep -v -e none -e tmpfs'
