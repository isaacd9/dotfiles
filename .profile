_emoj() {
  emoj $1 -c;
}

function _gitignore(){
  data=`curl -sf "https://raw.githubusercontent.com/github/gitignore/master/$1.gitignore"`;
  if [ $? -eq 0 ]; then
    echo "\n${data}" >> .gitignore;
  else
    echo "gitignore for $1 not found"
  fi
}

function _docker_clean(){
  IFS=$'\n'
  for c in `docker ps -a | grep -E "(months|weeks) ago"`; do
    echo $c | awk '{print "removing",$2}';
    docker rm -v -f `echo $c | awk '{print $1}'`
  done
}

alias c=clear
alias s="source ~/.zshrc"
alias e=_emoj
alias gitignore='_gitignore'
alias rmswap="find . -name '*.sw*' | xargs rm"

alias ls="ls -hG"
alias sl=ls
alias l=lein
#alias vim=mvim

if [ -e /usr/local/bin/mvim ]; then
  alias vim="mvim -v"
else
  echo "mvim not found, faling back to vim"
  unalias vim
fi

alias vi=vim
alias @code="~/code"
alias @school="~/school"

alias j="jobs"

alias git="hub"
alias g="git"
alias t="tig"
alias gs="git status"
alias gc="git checkout"
alias ga="git add"
alias gp="git pull --rebase"
alias gl="git lg"
alias commit="git commit"
alias docker-clean=_docker_clean

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

export GOPATH=~/code/go
export PATH=$PATH:$GOPATH/bin
export EDITOR="vim"

export ANSIBLE_NOCOWS=1


export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

