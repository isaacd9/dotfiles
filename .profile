alias c=clear
alias s="source ~/.zshrc"

alias ls="ls -F"
alias sl=ls
#alias vim=mvim

if [ $(which mvim 2&> /dev/null; echo $?) -eq 0 ]; then
  alias vim="mvim -v"
else
  echo "mvim not found, faling back to vim"
  unalias vim
fi

alias vi=vim
alias @code="~/code"

alias g="git"
alias t="tig"
alias gs="git status"
alias gc="git checkout"
alias ga="git add"
alias gp="git pull --rebase"
alias gl="git lg"
alias commit="git commit"

alias vs="vagrant up"
alias vh="vagrant halt"
alias vd="vagrant destroy"
alias vr="vagrant reload"
alias vp="vagrant provision"

alias d='docker'
alias dm='docker-machine'
alias denv='eval $(docker-machine env default)'

alias av='source env/bin/activate'
alias v=vagrant
