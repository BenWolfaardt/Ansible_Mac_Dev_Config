# View aliases
alias va='cat $ans/roles/zsh/templates/aliases.zsh'

# Default oh my zsh
#   https://github.com/ohmyzsh/ohmyzsh/wiki/Cheatsheet

# --------- bash --------- #
alias b='bash'

# --------- brew --------- #
alias br='brew'

alias brupd='brew update'
alias brupg='brew upgrade'

# --------- docker --------- #
alias d='docker'

# alias dcdd='docker compose down -d'
function dcdd() { docker compose -f "$1" down -d }
# alias dcu='docker compose up'
function dcu() { docker compose -f "$1" up }
# alias dcub='docker compose up --build'
function dcub() { docker compose -f "$1" up --build }
# alias dcud='docker compose up -d'
function dcud() { docker compose -f "$1" up -d }
alias dc='docker compose'
alias dcd='docker compose down'
# alias dcfd='docker compose down'
function dcfd() { docker compose -f "$1" down }
# alias dcu='docker compose up'
alias dcu='docker compose up'
# alias dcfu='docker compose up'
function dcfu() { docker compose -f "$1" up }
alias dcub='docker compose up --build'
# alias dcfub='docker compose up --build'
function dcfub() { docker compose -f "$1" up --build }
alias dcud='docker compose up -d'
# alias dcfud='docker compose up -d'
function dcfud() { docker compose -f "$1" up -d }
alias de='docker exec -it'
alias din='docker info'
alias di='docker image'
alias dil='docker image ls'
# alias dlf='docker logs "$1" -f'
function dlf() { docker logs "$1" -f }
alias dn='docker network'
alias dni='docker network inspect'
alias dnl='docker network ls'
alias dp='docker ps'
alias dv='docker volume'
alias dvi='docker volume inspect'
alias dvl='docker volume ls'

# --------- find --------- #
alias f='find'

alias fda='find . -name . -o -prune -exec rm -rf -- {} +'  # delete all contents in current directory
# alias ff='find . -name "$1"'
function ff() { find . -name "$1" }  # find a file by recursively looking in current directory

# --------- git --------- #
alias g='git'

# See also ~/src/config/dotfiles/.gitconfig

alias gbd='git branch -D'  # for local branch deletion
# alias gcnv='git commit "$1" --no-verify'
function gcnv() { git commit -m "$1" --no-verify }
alias gco='git checkout --orphan'
alias gpd='git push origin --delete'  # for remote branch deletion
alias gr='git remote -v'
alias grd='git rev-parse --abbrev-ref --symbolic-full-name @{u}'  # describe the remote name and branch

# TODO: make it a funciton
# git remote remove tss-ben-fork

# --------- go --------- #
alias gomt='go mod tidy'
alias gov='go version'
# alias gvs='go install golang.org/dl/go$1@latest && go$1 download'
function govdl() { go install golang.org/dl/go"$1"@latest && go"$1" download }  # install specific version
alias govl='ls ~/go/bin | grep -E "^go[0-9]+(\.[0-9]+)*$"'  # list installed go versions
alias govsl='ls -l /usr/local/go/bin/go'  # list current symbolic link version
# alias gvs='sudo ln -sf ~/go/bin/$1 /usr/local/go/bin/go'
function govssl() { sudo ln -sf ~/go/bin/"$1" /usr/local/go/bin/go }  # update the symbolic link to the desired go version

# TODO: test these...
# --------- grep --------- #
# TODO: conflict with git remote -v
# alias gr='grep'

# alias grrn='grep -rn "search_string" /path/to/folder'
function grrn() { grep -rn "$1" "$2"}  # search for a string and show line numbers:
# alias grrni='grep -rn --include=\*.<file_extension> "search_string" /path/to/folder'
function grrni() { grep -rn --include=\*."$1" "$2" "$3"}

# --------- ignite --------- #
alias i='ignite'

alias icb='ignite chain build'
alias ics='ignite chain serve'
alias icsr='ignite chain serve --reset-once'
alias igp='ignite generate proto-go'
alias igt='ignite generate ts-client'
alias iv='ignite version'

# --------- ip --------- #
alias ip4='curl -4 icanhazip.com'
# FIXME: see comments for https://ipv6.net/blog/how-to-check-your-public-ipv6-ip-address-from-the-linux-command-line-using-bash/
alias ip6='curl -6 icanhazip.com'
alias ip6d='curl -s https://ifconfig.me | xargs ipv6calc -q -i -m'  # details

# --------- kimad --------- #
alias k='kimad'

alias kqclc='kimad query chains list-chain'
alias kqclpb='kimad query chains list-pool-balance'
alias kqgp='kimad query gov proposals'
alias kqkltp='kimad query kima list-tss-pubkey'
alias kqklwn='kimad q kima list-whitelisted-node'
alias kqolov='kimad query observer list-observe-vote'
alias kqtltd='kimad query transaction list-transaction-data'
alias kqtlp='kimad query tss list-all-new-pubkey'
alias kqtlp='kimad query tss get-keygen-block'
alias kqtlpe='kimad query tss get-keygen-block-eddsa'

# --------- lsof --------- #
# alias lp='sudo lsof -i -P -n | grep $1'
function lp() { sudo lsof -i -P -n | grep ":$1" }  # check if a specific port is beng used

# --------- nmap --------- #
alias np='sudo nmap -p 22 192.168.0.0/24'  # get ip addresses of machines with ssh port 22 open on local network

# --------- poetry --------- #
alias p='poetry'

alias pa='poetry add'
# alias pae='poetry add $1 --extras $2'
function pae() { poetry add "$1" --extras "$2" }
# alias pad='poetry add $1 --group dev'
function pad() { poetry add "$1" --group dev }
alias peu='poetry env use -- $(pyenv which python)'
alias plnu='poetry lock --no-update'
alias pint='poetry init'
alias pins='poetry install'
alias pr='poetry remove'
alias ps='poetry shell'
alias psint='poetry shell && poetry init'
alias psins='poetry shell && poetry install'

# --------- pre-commit --------- #
alias pc='pre-commit'

alias pci='pre-commit install'
alias pcra='pre-commit run --all-files'
alias pcram='pre-commit run mypy --all-files'
alias pcrar='pre-commit run ruff --all-files'
alias pcrf='pre-commit run --files'
alias pcrfm='pre-commit run mypy --files'
alias pcrfr='pre-commit run ruff --files'

# --------- pyenv --------- #
alias py='pyenv'

alias pyi='pyenv install'
alias pyil='pyenv install --list'
alias pyilg='pyenv install --list | grep'
alias pys='pyenv shell'
alias pyv='pyenv versions'
alias pyvg='pyenv versions | grep'
alias pywp='pyenv which python'

# --------- system --------- #
alias smt='mv * .[!.]* .??* ~/.Trash' # mv all files in the current directory to trash
alias sra='rm -rf * .[!.]* .??*' # delete all files in the current directory

# --------- suffix aliases --------- #
# FIXME: not sure this actually works?
alias -s json=code
alias -s py=code
alias -s txt=code

# --------- terraform --------- #
alias t='terraform'

# TODO: Update to use 1password terminal plugins for tokens
alias tfa='terraform apply -var "do_token=${DO_PAT}"'
alias tfp='terraform plan -var "do_token=${DO_PAT}"'
