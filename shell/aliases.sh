# Credits to https://github.com/kutsan/dotfiles/

alias more=less
alias :q='exit'
alias mkdir='mkdir --parents' # Make parent directories as needed.
alias du='du --max-depth=1 --si' # Display size of files and folders under current directory.
alias df='df -h --print-type' # Disk usage with FS types
alias f='fzf --preview "head -100 {}"'
alias fo='nohup xdg-open "$PWD" &' # Open current directory onto GUI file browser.
alias path="echo $PATH | cut --delimiter=':' --fields=1- --output-delimiter=$'\n'"

alias clbin="curl -F 'clbin=<-' https://clbin.com"
alias myip='curl http://checkip.amazonaws.com' # curl ipinfo.io would also give more info
alias wttr='curl wttr.in/49418'
alias removechars='sed "s,\x1B\[[0-9;]*[a-zA-Z],,g"'
alias darn='sudo $(history -p \!\!)'
alias listgroups='cut -d: -f1 /etc/group'

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

## Refresh font cache
alias font-refresh="fc-cache -fv"

## git clone depth 1, who needs to clone full repository if you can clone the top layer only
alias clone="git clone --depth 1"

## merge Xresources, useful for urxvt & rofi theming
alias mergex="xrdb ~/.Xresources"

# Mirror a website
alias mirrorsite='wget -m -k -K -E -e robots=off'

alias search="rg \
	--color='always' \
	--heading \
	--line-number \
	--no-messages \
	--no-ignore \
	--hidden \
	--follow \
	--smart-case \
	--glob '!{.git/*,node_modules/*,$(basename $HISTFILE)}' \
	--regexp"