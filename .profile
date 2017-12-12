_emoj() {
  emoj $1 -c;
}

function _tobin() {
  hex=$(echo "$1" | cut -c 1-2);
  if [ "$hex" = "0x" ]; then
    val=$(echo "$1" | cut -d x -f 2- | tr 'a-z' 'A-Z')
    data=$(echo "ibase=16;obase=2; $val" | bc);
  else
    data=$(echo "obase=2; $1" | bc);
  fi

  printf "%08d\n" $data
}

function _gitignore(){
  data=`curl -sf "https://raw.githubusercontent.com/github/gitignore/master/$1.gitignore"`;
  if [ $? -eq 0 ]; then
    echo "\n${data}" >> .gitignore;
  else
    echo "gitignore for $1 not found"
  fi
}

function _gitignore_search(){
  data=`curl -sf "https://api.github.com/repos/github/gitignore/contents"`;
  if [ $? -eq 0 ]; then
    echo $data | grep -i "\"name\": \"$1" | cut -c 14- | cut -d . -f 1;
  else
    echo "gitignore for $1 not found";
  fi
}

function _gitignore_cat(){
  data=`curl -sf "https://raw.githubusercontent.com/github/gitignore/master/$1.gitignore"`;
  if [ $? -eq 0 ]; then
    echo $data
  else
    echo "gitignore for $1 not found";
  fi
}

alias gitignore='_gitignore'
alias gitignore-search='_gitignore_search'
alias gitignore-cat='_gitignore_cat'

function _docker_clean(){
  IFS=$'\n'
  for c in `docker ps -a | grep -E "(months|weeks) ago"`; do
    echo $c | awk '{print "removing",$2}';
    docker rm -v -f `echo $c | awk '{print $1}'`
  done
}


alias c=clear
alias p="pwd | pbcopy"
alias s="source ~/.zshrc"
alias e=_emoj
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
alias @facebook="~/facebook"
alias @fb="~/facebook"
alias @vms="~/vms"

alias j="jobs"

alias git="hub"
alias g="git"
alias t="tig"
alias gs="git status"
alias gc="gcs -v"
alias clone="git clone"
alias ga="git add"
alias gp="git pull --rebase"
alias gl="git lg"
alias commit="git commit"
alias @="ssh"
alias python="rlwrap python"
alias docker-clean=_docker_clean
alias murder="pkill -9 -lif"
alias "git commit"="gcs"

alias vs="vagrant status"
alias vu="vagrant up"
alias vh="vagrant halt"
alias vd="vagrant destroy"
alias vr="vagrant reload"
alias vp="vagrant provision"

alias d='docker'
alias 🐳='docker'
alias dm='docker-machine'
alias d-c='docker-compose'
alias denv='eval $(docker-machine env default)'

alias av='source env/bin/activate'
alias v=vagrant

alias n="npm"
alias nt="npm test"

alias f1="fg %1"
alias f2="fg %2"
alias f3="fg %3"
alias f4="fg %4"
alias f5="fg %5"
alias f6="fg %6"
alias f7="fg %7"
alias f8="fg %8"
alias f9="fg %9"

alias mike="node"
alias ocaml="rlwrap ocaml"

alias tobin=_tobin;
alias commas="paste -sd,"
alias spaces="paste -sd \" \" "

alias gpe="gpg --armor -e -r"
alias gpd="gpg -d"

alias activate="source env/bin/activate"

export GOPATH=~/code/go
export PATH=$PATH:$GOPATH/bin
export EDITOR="vim"

export ANSIBLE_NOCOWS=1
export ANSIBLE_HOST_KEY_CHECKING=False


export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH="/Users/isaac/code/scratch/k8s/kubernetes/client/bin:$PATH"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*


export PATH=$PATH:/Users/isaac/bin

#source "/Users/isaac/lib/azure-cli/az.completion"

# RESET MOTD
(~/.update_motd.sh &)

source ~/.inspiration.sh
alias a="tmux attach -d"

# OPAM configuration
. /Users/isaac/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true
