# Aliases
alias ls='ls -Fh'
alias subl='open -a "Sublime Text"'
alias s='open -a "Sublime Text"'
alias o='open ./'
alias g='sr google'
alias v='vagrant'
alias networkreset='sudo route -n flush; sudo route -n flush; sudo route -n flush; sudo route-n flush; sudo ifconfig en0 down; sudo ifconfig en0 up; sudo ifconfig en1 down; sudo ifconfig en1 up; sudo killall -HUP mDNSResponder'
alias ws='python -m SimpleHTTPServer'
alias jpods='bluetoothconnector FC-1D-43-E6-8A-C9'
alias tf='terraform'
alias dnsk='sudo killall -HUP mDNSResponder'

# https://blog.jpalardy.com/posts/untangling-your-homebrew-dependencies/
# https://apple.stackexchange.com/a/322371
alias brewtree='brew deps --tree --installed'

# adding Jon's scripts to path
export PATH="/Users/jonpurdy/bin:$PATH"

# set the default editor to nano
export EDITOR=/usr/bin/nano

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

# added 2016-03-09
# https://github.com/mrzool/bash-sensible
if [ -f ~/.sensible.bash ]; then
   source ~/.sensible.bash
fi

# added 2016-04-13
function title {
    echo -ne "\033]0;"$*"\007"
}

# added 2017-06-27
# ensures that each command run gets written immediately
#export PROMPT_COMMAND='history -a'
#export PROMPT_COMMAND='echo "[$(date "+%Y-%m-%d %H:%M:%S")][$(pwd)] $(history 1)" >> ~/.bash_history.log'
#export PROMPT_COMMAND="history -a; $PROMPT_COMMAND"
#export PROMPT_COMMAND='if [ "$(id -u)" -ne 0 ]; then echo "$(date "+%Y-%m-%d.%H:%M:%S") $(pwd) $(history 1)" >> ~/.logs/bash-history-$(date "+%Y-%m-%d").log; fi'

# Added 2018-07-03 for BlockX
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

# Added 2019-08-08 for Jesse
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8


source ~/.secrets

