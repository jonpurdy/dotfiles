# Aliases
#alias ls='ls -Fh'
alias ls='ls -la'
alias subl='open -a "Sublime Text"'
alias s='open -a "Sublime Text"'
alias o='open ./'
alias g='sr google'
alias v='vagrant'
alias dnsreset='sudo killall -HUP mDNSResponder'
alias networkreset='sudo route -n flush; sudo route -n flush; sudo route -n flush; sudo route -n flush; sudo ifconfig en0 down; sudo ifconfig en0 up; sudo killall -HUP mDNSResponder'
alias ws='python -m SimpleHTTPServer'
alias ws2='twistd -no web --path=.'
alias jpods='bluetoothconnector 00-7d-60-e4-ab-17'
alias tf='terraform'
alias dnsk='sudo killall -HUP mDNSResponder'
alias updatedb='sudo /usr/libexec/locate.updatedb'
alias weath='curl wttr.in'
alias airport='/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport'
alias webcamv2='gst-launch-1.0 avfvideosrc -e device-index=2 ! video/x-raw,width=1920,height=1080 ! autovideosink'
alias webcamv0='gst-launch-1.0 avfvideosrc -e device-index=0 ! video/x-raw,width=1920,height=1080 ! autovideosink'
alias webcaml='ffmpeg -f avfoundation -list_devices true -i ""'
alias ydl='youtube-dl'
alias ydlb='youtube-dl -f "bestvideo[ext=mp4]+bestaudio[ext=m4a]/mp4" '
alias deq='xattr -d com.apple.quarantine '

# https://blog.jpalardy.com/posts/untangling-your-homebrew-dependencies/
# https://apple.stackexchange.com/a/322371
alias brewtree='brew deps --tree --installed'

# adding Jon's scripts to path (no longer needed)
# export PATH="/Users/jonpurdy/bin:$PATH"

# set the default editor to nano
export EDITOR=/usr/bin/nano

# for setting terminal/tab name correctly after logging out of ssh
# http://apple.stackexchange.com/questions/83659/terminal-tab-title-after-ssh-session
export PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}\007"'

# PS1 (or PROMPT) to make it beautiful
NEWLINE=$'\n'
export PS1="💻 ️%~${NEWLINE}%F{red}>%F{yellow}>%F{cyan}>%f "

# prevents Python from spitting out .pyc files everywhere
# https://docs.python.org/2/using/cmdline.html
PYTHONDONTWRITEBYTECODE=True
export PYTHONDONTWRITEBYTECODE
export PATH="/usr/local/sbin:$PATH"

# added 2017-06-27
# ensures that each command run gets written immediately
#export PROMPT_COMMAND='history -a'
#export PROMPT_COMMAND='echo "[$(date "+%Y-%m-%d %H:%M:%S")][$(pwd)] $(history 1)" >> ~/.bash_history.log'
#export PROMPT_COMMAND="history -a; $PROMPT_COMMAND"
#export PROMPT_COMMAND='if [ "$(id -u)" -ne 0 ]; then echo "$(date "+%Y-%m-%d.%H:%M:%S") $(pwd) $(history 1)" >> ~/.logs/bash-history-$(date "+%Y-%m-%d").log; fi'

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# for passwords and such that can't be kept in a repo
source ~/.secrets

# for generic colorizer
source /usr/local/etc/grc.bashrc