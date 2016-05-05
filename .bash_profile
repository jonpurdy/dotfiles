# 2016-03-21 I used this before but it caused issues with remote SSH
# and SCP (ansiweather, etc)
# if [ -f ~/.bashrc ]; then
#    source ~/.bashrc
# fi

# makes default 'ls' useful
alias ls='ls -lFh'

# PS1 to make it beautiful
export PS1="\w\n\[$(tput sgr0)\]\[\033[38;5;160m\]>\[$(tput sgr0)\]\[\033[38;5;11m\]>\[$(tput sgr0)\]\[\033[38;5;39m\]>\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"

# prevents Python from spitting out .pyc files everywhere
# https://docs.python.org/2/using/cmdline.html
PYTHONDONTWRITEBYTECODE=True
export PYTHONDONTWRITEBYTECODE
export PATH="/usr/local/sbin:$PATH"

# adding Jon's scripts to path
export PATH="/Users/jonpurdy/Dropbox/KR_Projects/active_code/scripts:$PATH"

# for setting terminal/tab name correctly after logging out of ssh
# http://apple.stackexchange.com/questions/83659/terminal-tab-title-after-ssh-session
export PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}\007"'

# open in sublime text
alias subl='open -a "Sublime Text"'

# added 2016-03-09
# https://github.com/mrzool/bash-sensible
if [ -f ~/.sensible.bash ]; then
   source ~/.sensible.bash
fi

# added 2016-03-15
# modified with gtimeout 1 in case of lack of internet connection 2016-03-21
# for new installation, "brew install coreutils"
# ansiweather
gtimeout 1 ansiweather

# added 2016-03-21
export EDITOR=/usr/bin/nano

# displays my current watson status
# added 2016-03-21
# watson status
# disabled 2016-05-05

# added 2016-03-30
alias ws='watson'

# added 2016-04-13
function title {
    echo -ne "\033]0;"$*"\007"
}

# added 2016-04-14
alias o='open ./'
