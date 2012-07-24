# Stolen from http://d.hatena.ne.jp/mollifier/20090814/p1
autoload -Uz vcs_info

# some_branch
zstyle ':vcs_info:*' formats '%b'

# some_branch | rebase-i
zstyle ':vcs_info:*' actionformats '%b|%a'

# The command which will run before prompt
precmd () {

  # Set git info to '1v' 
  psvar=()
  LANG=en_US.UTF-8 vcs_info
  [[ -n "$vcs_info_msg_0_" ]] && psvar[1]="$vcs_info_msg_0_"

}

# Right prompt
RPROMPT="%F{207}%~% %(!.#.)%f%1(v|%F{193} %1v%f|)"

# Left prompt
PROMPT="%F{207}$%f "

# Question prompt 
SPROMPT="%B%F{256}%K{200}%r ? %f%k%}%b n,y,a,e :"