### #!/usr/bin/env bash

# Set locale and charset
export LANGUAGE="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"
export LC_NUMERIC="en_US.UTF-8"
export LANG="en_US.UTF-8"

# Path to the bash it configuration
export BASH_IT="~/.bash_it"

# Lock and Load a custom theme file
# location /.bash_it/themes/
export BASH_IT_THEME='bakke'

# Don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
export HISTCONTROL=ignoredups:ignorespace #ignoreboth

# Timestamps for later analysis.
# See http://debian-administration.org/users/rossen/weblog/1
export HISTTIMEFORMAT='%F %T '

# Append to the history file, don't overwrite it
shopt -s histappend

# If set, Bash attempts to save all lines of a multiple-line command in the
# same history entry. This allows easy re-editing of multi-line commands.
shopt -s cmdhist

# Check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
shopt -s globstar

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob;

# Autocorrect typos in path names when using 'cd'
shopt -s cdspell;

# If set, and a file that Bash is checking for mail has been accessed since
# the last time it was checked a message is displayed.
shopt -u mailwarn
unset MAILCHECK


# Theme config
export POWERLINE_PROMPT_USER_INFO_MODE="sudo"
export THEME_CLOCK_FORMAT="%H:%M:%S"
export POWERLINE_PROMPT="user_info in_vim scm cwd"

# Append ~/_bin and /var/lib/dot-files/bin to PATH
export PATH="~/_bin:/var/lib/dot-files/bin:$PATH"

# Enable colors for the bash -ls command
export CLICOLOR=1
export LSCOLORS="ExfxcxdxExegDxabagacDx"

# Set this to false to turn off version control status checking
# within the prompt for all themes
export SCM_CHECK=false

# Colors
# Configure terminal formatting colors & styles
# txtblk='\e[0;30m' # Black - Regular
# txtred='\e[0;31m' # Red
# txtgrn='\e[0;32m' # Green
# txtylw='\e[0;33m' # Yellow
# txtblu='\e[0;34m' # Blue
# txtpur='\e[0;35m' # Purple
# txtcyn='\e[0;36m' # Cyan
# txtwht='\e[0;37m' # White
# bldblk='\e[1;30m' # Black - Bold
# bldred='\e[1;31m' # Red
# bldgrn='\e[1;32m' # Green
# bldylw='\e[1;33m' # Yellow
# bldblu='\e[1;34m' # Blue
# bldpur='\e[1;35m' # Purple
# bldcyn='\e[1;36m' # Cyan
# bldwht='\e[1;37m' # White
# undblk='\e[4;30m' # Black - Underline
# undred='\e[4;31m' # Red
# undgrn='\e[4;32m' # Green
# undylw='\e[4;33m' # Yellow
# undblu='\e[4;34m' # Blue
# undpur='\e[4;35m' # Purple
# undcyn='\e[4;36m' # Cyan
# undwht='\e[4;37m' # White
# bakblk='\e[40m'   # Black - Background
# bakred='\e[41m'   # Red
# bakgrn='\e[42m'   # Green
# bakylw='\e[43m'   # Yellow
# bakblu='\e[44m'   # Blue
# bakpur='\e[45m'   # Purple
# bakcyn='\e[46m'   # Cyan
# bakwht='\e[47m'   # White
# txtrst='\e[0m'    # Text Reset

# GnuPG settings
export GPG_TTY=$(/usr/bin/tty)

###$HERE###

# Other settings...
export EDITOR=vim
export GIT_EDITOR='${EDITOR}'
export TERM=xterm-256color
export GREP_OPTIONS='--color=auto'

# Load Bash It
source "$BASH_IT"/bash_it.sh
