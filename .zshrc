# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=100000
SAVEHIST=100000
setopt appendhistory autocd extendedglob notify auto_pushd correct
unsetopt beep nomatch
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/fu/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

autoload colors
colors
SPROMPT="%B%{${bg[green]}%}%r ? %{${reset_color}%}%b n,y,a,e :"
PROMPT="%B%{${fg[green]}%}$ %{${reset_color}%}%b"
RPROMPT="%B%{${fg[green]}%}%n@%m %~% %(!.#.) %{${reset_color}%}%b"


autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^r" history-incremental-search-backward

alias v='vi'
alias vimrc='vi ~/.vimrc'
alias zshrc='vi ~/.zshrc'
alias lv='lv -c'
#alias ls='ls --color=auto'
alias g='git'
alias be='bundle exec'
alias gi='git'
alias s='git status'
alias d='git diff'
alias gd='git diff'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias tl='tail -f log/development.log'

alias t='~/time.sh'

alias mysql='mysql5 -p'
alias mysqldump='mysqldump5'

alias gosh='rlwrap gosh'
export RUBYOPT=-Ku
export PATH=/opt/local/bin:$PATH
export PATH=/opt/local/sbin:$PATH
export PATH=/var/lib/gems/1.8/bin:$PATH

if [[ -s "$HOME/.rvm/scripts/rvm" ]]  ; then source "$HOME/.rvm/scripts/rvm" ; fi
