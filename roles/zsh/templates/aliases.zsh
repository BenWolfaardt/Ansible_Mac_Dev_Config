# View aliases
alias va='cat $ans/roles/zsh/templates/aliases.zsh'

# Default oh my zsh
#   https://github.com/ohmyzsh/ohmyzsh/wiki/Cheatsheet

# apt package manager
alias aar='sudo apt autoremove -y'  # removes packages that were automatically installed to satisfy dependencies for other packages and are no longer needed
alias aupd='sudo apt update'
alias aupg='sudo apt upgrade'
alias aupgy='sudo apt upgrade -y'
alias auu='sudo apt update && sudo apt upgrade'
alias auuy='sudo apt update && sudo apt upgrade -y'
alias auuay='sudo apt update && sudo apt upgrade -y && autoremove -y'
 
# docker
alias d='docker'

alias dc='docker compose'
alias dcd='docker compose down'
alias dcdd='docker compose down -d'
alias dcu='docker compose up'
alias dcub='docker compose up --build'
alias dcud='docker compose up -d'
alias de='docker exec -it'
alias din='docker info'
alias di='docker image'
alias dil='docker image ls'
# alias dlf='docker logs "$1" -f'
function dlf() { docker logs $1 -f }
alias dn='docker network'
alias dni='docker network inspect'
alias dnl='docker network ls'
alias dp='docker ps'
alias dv='docker volume'
alias dvi='docker volume inspect'
alias dvl='docker volume ls'

# dpkg
alias di='sudo dpkg -i'  # followed with package name

# find
alias fda='find . -name . -o -prune -exec rm -rf -- {} +'  # delete all contents in current directory
# alias ff='find . -name "$1"'
function ff() { find . -name "$1" }  # find a file by recursively looking in current directory

# git
# See also ~/src/config/dotfiles/.gitconfig
alias g='git'

alias gbd='git branch -D'  # for local branch deletion
# alias gcnv='git commit "$1" --no-verify'
function gcnv() { git commit -m $1 --no-verify }
alias gco='git checkout --orphan'
alias gpd='git push origin --delete'  # for remote branch deletion

# grep
# alias grrn='grep -rn "search_string" /path/to/folder'
function grrn() { grep -rn "$1" $2}  # search for a string and show line numbers:
# alias grrni='grep -rn --include=\*.<file_extension> "search_string" /path/to/folder'
function grrni() { grep -rn --include=\*.$1 "$2" $3}

# ignite
alias i='ignite'

alias icb='ignite chain build'
alias ics='ignite chain serve'
alias icsr='ignite chain serve --reset-once'
alias igp='ignite generate proto-go'

# ip
alias ip4='curl -4 icanhazip.com'
alias ip6='curl -6 icanhazip.com'
alias ip6d='curl -s https://ifconfig.me | xargs ipv6calc -q -i -m'  # details

# lsof
# alias lp='sudo lsof -i -P -n | grep $1'
function lp() { sudo lsof -i -P -n | grep ":$1" }  # check if a specific port is beng used

# nautilus
alias naut='sudo nautilus'

# nmap
alias np='sudo nmap -p 22 192.168.0.0/24'  # get ip addresses of machines with ssh port 22 open on local network

# poetry
alias pa='poetry add'
# alias pae='poetry add $1 --extras $2'
function pae() { poetry add $1 --extras $2 }
# alias pad='poetry add $1 --group dev'
function pad() { poetry add $1 --group dev }
alias peu='poetry env use -- $(pyenv which python)'
alias plnu='poetry lock --no-update'
alias pint='poetry init'
alias pins='poetry install'
alias pr='poetry remove'
alias ps='poetry shell'
alias psint='poetry shell && poetry init'
alias psins='poetry shell && poetry install'

# pre-commit
alias pci='pre-commit install'
alias pcra='pre-commit run --all-files'
alias pcram='pre-commit run mypy --all-files'
alias pcrar='pre-commit run ruff --all-files'
alias pcrf='pre-commit run --files'
alias pcrfm='pre-commit run mypy --files'
alias pcrfr='pre-commit run ruff --files'

# pyenv
alias pyi='pyenv install'
alias pyil='pyenv install --list'
alias pyilg='pyenv install --list | grep'
alias pys='pyenv shell'
alias pyv='pyenv versions'
alias pyvg='pyenv versions | grep'
alias pywp='pyenv which python'

# terraform
alias tfa='terraform apply -var "do_token=${DO_PAT}"'
alias tfp='terraform plan -var "do_token=${DO_PAT}"'

# suffix aliases
alias -s json=code
alias -s py=code
alias -s txt=code
