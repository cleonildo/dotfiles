# better yaourt colors
export YAOURT_COLORS="nb=1:pkg=1:ver=1;32:lver=1;45:installed=1;42:grp=1;34:od=1;41;5:votes=1;44:dsc=0:other=1;35"

# OS
alias h="history"
alias uu="sudo apt-get update && sudo apt-get upgrade"
alias cc="sudo apt-get autoclean && sudo apt-get autoremove"
#alias uu="sudo pacman -Syyu"
#alias cc="sudo pacman -Scc"
alias reload="source ~/.bashrc && echo 'Bash reloaded! :D'"

# Shortcuts
alias c="clear"
alias q="exit"
alias l='ls -hF'
alias la='l -A'
alias ll='l -l'
alias lla='la -l'
alias ..="cd .."
alias co="cd ~/code"
alias count="ls -1 | wc -l"

# Enable ANSI colors sequences to distinguish file types
export CLICOLOR=1

# Value of this variable describes what color to use for which attribute
export LSCOLORS=GxFxCxDxBxegedabagaced

# Color definitions
RED='\[\033[1;31m\]'
GREEN='\[\033[1;32m\]'
YELLOW='\[\033[1;33m\]'
PURPLE='\[\033[1;35m\]'
GRAY='\[\033[1;30m\]'
DEFAULT='\[\033[0m\]'

# Function which prints current Git branch name
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

# Set up prompt
PS1="${RED}\u" # Username
PS1+=" ${GRAY}• " # Separator
PS1+="${GREEN}\h" # Hostname
PS1+=" ${GRAY}• " # Separator
PS1+="${YELLOW}\w" # Working directory
PS1+=" ${GRAY}\$([[ -n \$(git branch 2> /dev/null) ]] && echo \"•\") " # Separator
PS1+="${PURPLE}\$(parse_git_branch)" # Git branch
PS1+="\n" # New line
PS1+="${GRAY}\$ " # Dollar sign
PS1+="${DEFAULT}" # Get back default color

export PS1;
