export EDITOR=vim


alias hgrep='history | grep -i '
alias psgrep="ps aux | grep -v grep | grep -i -e VSZ -e"

alias reload='source ~/.bash_profile'
alias grep='grep --color=auto'
alias h='history'
alias psef='ps -ef | head -1;  ps -ef | grep -v grep | grep --color=auto -i $1'
alias d='GLOBIGNORE=.; du -sch *; GLOBIGNORE=; shopt -u dotglob nullglob'
function f() { find . -iname "*$1*" | grep $1; }
alias ip='curl http://ipv4.icanhazip.com/'
# alias iip='ifconfig | grep -o "inet \(192\.168\.\d\+\.\d\+\)" | grep -o "192\.168\.\d\+\.\d\+"'
alias iip='ifconfig | grep "inet " | tail -1 | cut -d " " -f2'
alias weather='curl wttr.in/sat'
alias tag='ctags --tag-relative -R -f ./.git/tags .'

alias off='pmset displaysleepnow'
alias index='sudo mdutil -E /'

# Change default ls directory color to be readable on dark background
# (OSX)
export LSCOLORS='Exfxcxdxbxegedabagacad'
# (LINUX)
export LS_COLORS=$LS_COLORS:'di=0;35:'


### HISTORY ###
# no duplicate entries
export HISTCONTROL=ignoredups:erasedups
# big big history
export HISTSIZE=100000
export HISTFILESIZE=100000
# Don't record some commands
export HISTIGNORE="&:[ ]*:exit:ls:bg:fg:history:clear"
# Save and reload the history after each command finishes
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"
# Useful timestamp format
#export HISTTIMEFORMAT='%F %T '
export HISTTIMEFORMAT="%h %d %H:%M:%S "
# append to history, don't overwrite it
shopt -s histappend
# Save multi-line commands as one command
shopt -s cmdhist

