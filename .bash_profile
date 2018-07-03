# makes default 'ls' useful
alias ls='ls -Fh'

# open in sublime text
alias subl='open -a "Sublime Text"'
alias s='open -a "Sublime Text"'

# added 2016-03-30
alias ws='watson'

# added 2016-04-14
alias o='open ./'

# added 2016-05-19
alias g='sr google'

# added 2017-02-27
alias v='vagrant'

# added 2016-06-11
#networksetup -setairportpower en0 off; networksetup -setairportpower en0 on
alias networkreset='sudo route -n flush; sudo route -n flush; sudo route -n flush; sudo route-n flush; sudo ifconfig en0 down; sudo ifconfig en0 up; sudo ifconfig en1 down; sudo ifconfig en1 up; sudo killall -HUP mDNSResponder'

# added 2017-04-20
alias doo='doctl compute droplet'

# adding Jon's scripts to path
export PATH="/Users/jonpurdy/Dropbox/KR_Projects/active_code/scripts:$PATH"
export PATH="/Users/jonpurdy/bin:$PATH"


# set the default editor to nano
export EDITOR=/usr/bin/nano

# for creating virtualenvs using virtualenvwrapper
alias mkv='mkvirtualenv --python=/usr/local/opt/python3/bin/python3'
alias wo='workon'
alias wol='ls ~/.virtualenvs | grep -v "virtualenv\|activate\|project\|initialize\|get_env"'

# for setting terminal/tab name correctly after logging out of ssh
# http://apple.stackexchange.com/questions/83659/terminal-tab-title-after-ssh-session
export PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}\007"'

# PS1 to make it beautiful
export PS1="\w\n\[$(tput sgr0)\]\[\033[38;5;160m\]>\[$(tput sgr0)\]\[\033[38;5;11m\]>\[$(tput sgr0)\]\[\033[38;5;39m\]>\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"

# prevents Python from spitting out .pyc files everywhere
# https://docs.python.org/2/using/cmdline.html
PYTHONDONTWRITEBYTECODE=True
export PYTHONDONTWRITEBYTECODE
export PATH="/usr/local/sbin:$PATH"

# display the weather when opening a new Terminal window
# added 2016-03-15
# modified with gtimeout 1 in case of lack of internet connection 2016-03-21
# for new installation, "brew install coreutils"
# ansiweather
# gtimeout 1 ansiweather
# too much information, disabled

# added 2016-03-09
# https://github.com/mrzool/bash-sensible
if [ -f ~/.sensible.bash ]; then
   source ~/.sensible.bash
fi

# added 2016-04-13
function title {
    echo -ne "\033]0;"$*"\007"
}

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

# added 2016-08-30
#export PATH=/usr/local/bin:$PATH

# added 2017-06-27
# ensures that each command run gets written immediately
#export PROMPT_COMMAND='history -a'
#export PROMPT_COMMAND='echo "[$(date "+%Y-%m-%d %H:%M:%S")][$(pwd)] $(history 1)" >> ~/.bash_history.log'
#export PROMPT_COMMAND="history -a; $PROMPT_COMMAND"
#export PROMPT_COMMAND='if [ "$(id -u)" -ne 0 ]; then echo "$(date "+%Y-%m-%d.%H:%M:%S") $(pwd) $(history 1)" >> ~/.logs/bash-history-$(date "+%Y-%m-%d").log; fi'
