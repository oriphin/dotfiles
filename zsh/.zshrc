# Env Vars
export ZSH=$HOME/.oh-my-zsh
export JAVA_HOME=$(/usr/libexec/java_home)
export EC2_HOME=/usr/local/ec2/ec2-api-tools-1.7.3.2
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:~/bin"
export PATH="$PATH:$HOME/.rvm/bin:$GOROOT/bin:$GOPATH/bin"
export PATH="$PATH:$EC2_HOME/bin"
export PATH="$PATH:/Library/Frameworks/Python.framework/Versions/2.7/bin/"
export GOROOT=/usr/local/go
export GOPATH=~/dev/go
export MONO_MANAGED_WATCHER=disabled #resolved some mono build issues

# Set name of the theme to load.
ZSH_THEME="robbyrussell"

# load plugins
plugins=(git vagrant sublime aws)

source $ZSH/oh-my-zsh.sh

# User configuration
alias ls='ls -aFhlG'
alias ll='ls -l'
alias f='open -a Finder ./'
mkcd () { mkdir -p "$1" && cd "$1"; }

# load kvm
[ -s "/Users/troyschuetrumpf/.kre/kvm/kvm.sh" ] && . "/Users/troyschuetrumpf/.kre/kvm/kvm.sh"

# Quickly knockup a new module directory
supts() {mkdir $1 && mkdir "$1/Templates" && mkdir "$1/Controllers" && mkdir "$1/Services" && touch "$1/Module.ts"}

# dnvm asp.net 5 tools
source /usr/local/bin/dnvm.sh

# visual studio code
code () {
    if [[ $# = 0 ]]
    then
        open -a "Visual Studio Code"
    else
        [[ $1 = /* ]] && F="$1" || F="$PWD/${1#./}"
        open -a "Visual Studio Code" --args "$F"
    fi
}
