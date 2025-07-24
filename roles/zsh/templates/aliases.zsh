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

# Run docker compose down -d with a specific compose file
function dcdd() { docker compose -f "$1" down -d; }
# Run docker compose up with a specific compose file
function dcu() { docker compose -f "$1" up; }
# Run docker compose up --build with a specific compose file
function dcub() { docker compose -f "$1" up --build; }
# Run docker compose up -d with a specific compose file
function dcud() { docker compose -f "$1" up -d; }
alias dc='docker compose'
alias dcd='docker compose down'
# Run docker compose down with a specific compose file
function dcfd() { docker compose -f "$1" down; }
alias dcu='docker compose up'
# Run docker compose up with a specific compose file
function dcfu() { docker compose -f "$1" up; }
alias dcub='docker compose up --build'
# Run docker compose up --build with a specific compose file
function dcfub() { docker compose -f "$1" up --build; }
alias dcud='docker compose up -d'
# Run docker compose up -d with a specific compose file
function dcfud() { docker compose -f "$1" up -d; }
alias de='docker exec -it'
alias din='docker info'
alias di='docker image'
alias dil='docker image ls'
# Follow logs for a specific docker container
function dlf() { docker logs "$1" -f; }
alias dn='docker network'
alias dni='docker network inspect'
alias dnl='docker network ls'
alias dp='docker ps'
alias dv='docker volume'
alias dvi='docker volume inspect'
alias dvl='docker volume ls'

# --------- find --------- #
alias f='find'

# Delete all contents in current directory
alias fda='find . -name . -o -prune -exec rm -rf -- {} +'
# Find a file by recursively looking in current directory
function ff() { find . -name "$1"; }  # 

# --------- git --------- #
alias g='git'

# See also ~/src/config/dotfiles/.gitconfig

alias gbd='git branch -D'  # for local branch deletion
# Commit changes with a message without verifying
function gcnv() { git commit -m "$1" --no-verify; }
alias gco='git checkout --orphan'
# Delete a remote branch
alias gpd='git push origin --delete'
alias gr='git remote -v'
# Add a remote repository
function gra() { git remote add "$1" "$2"; }
alias grr='git remote remove'
# Update a remote repository URL
function grs() { git remote set-url "$1" "$2"; }
# Describe the remote name and branch
alias grd='git rev-parse --abbrev-ref --symbolic-full-name @{u}'

# --------- go --------- #
alias gomt='go mod tidy'
alias gov='go version'
# Install a specific version of Go
function govdl() { go install golang.org/dl/go"$1"@latest && go"$1" download; }
# List installed go versions
alias govl='ls ~/go/bin | grep -E "^go[0-9]+(\.[0-9]+)*$"'
# List current symbolic link version
alias govsl='ls -l /usr/local/go/bin/go'
# Set the active Go version by updating symbolic link
function govssl() { sudo ln -sf ~/go/bin/"$1" /usr/local/go/bin/go; }

# TODO: test these...
# --------- grep --------- #
# TODO: conflict with git remote -v
# alias gr='grep'

# Search for a string recursively and show line numbers
function grrn() { grep -rn "$1" "$2"; }  # search for a string and show line numbers:
# Search for a string recursively in files with specific extension
function grrni() { grep -rn --include=\*."$1" "$2" "$3"; }

# --------- ignite --------- #
alias i='ignite'

alias icb='ignite chain build'
alias ics='ignite chain serve'
alias icsr='ignite chain serve --reset-once'
alias igp='ignite generate proto-go'
alias igt='ignite generate ts-client'
# Scaffold a map in a specific module
function ism() { ignite scaffold map "$1" --module "$2" --yes; }
# Scaffold a list query in a specific module
function islq() { ignite scaffold list "$1" --module "$2" --yes; }
# Scaffold a query in a specific module
function isq() { ignite scaffold query "$1" --module "$2" --yes; }
# Scaffold a transaction in a specific module
function ist() { ignite scaffold message "$1" --module "$2" --yes; }
alias iv='ignite version'

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

# --------- launchctl --------- #
alias ll='launchctl list' # show all services (loaded and unloaded)
alias llr='launchctl list | grep -v "^-"' # show only running services
alias llu='launchctl list | grep $(whoami)' # show services for current user
alias lls='sudo launchctl list' # show system-wide services

# --------- lsof --------- #
# Check if a specific port is being used
function lp() { sudo lsof -i -P -n | grep ":$1"; }

# --------- networking --------- #
alias ip4='curl -4 icanhazip.com'
# FIXME: see comments for https://ipv6.net/blog/how-to-check-your-public-ipv6-ip-address-from-the-linux-command-line-using-bash/
alias ip6='curl -6 icanhazip.com'
alias ip6d='curl -s https://ifconfig.me | xargs ipv6calc -q -i -m'  # details

# Check what subnet you are on
alias subnet='ifconfig | grep "inet " | grep -v 127.0.0.1'

# Check if a specific port is open
#   -z: zero length
#   -v: verbose
#   args: <ip> <port>
alias port='nc -zv'

# View the routing table
#   -r : routing table
#   -n : numeric output
alias rtable='netstat -rn | grep 192.168'

# See the route to a specific IP address
#   args: <ip>
alias route='route get'

# Clear the ARP cache
#   -d: delete
#   args: <ip>
alias carp='sudo arp -d'

# --------- nmap --------- #
# Scan local network for machines with SSH port 22 open
alias np='sudo nmap -p 22 192.168.0.0/24'

# --------- poetry --------- #
alias p='poetry'

alias pa='poetry add'
# Add a package with specific extras
function pae() { poetry add "$1" --extras "$2"; }
# Add a package to the dev dependencies
function pad() { poetry add "$1" --group dev; }
alias peu='poetry env use -- $(pyenv which python)'
alias plnu='poetry lock --no-update'
alias pint='poetry init'
alias pins='poetry install'
alias pr='poetry remove'
# DEPRECATED: ps is a built-in command in zsh and poetry shell isn't used in Poetry v2
# alias ps='poetry shell'
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

# --------- sntp --------- #
alias time='sudo sntp -sS time.apple.com' # sync system time

# --------- ssh --------- #
alias sshl='ssh-add -L | ssh-keygen -lf -' # list all ssh keys

# --------- system --------- #
alias smt='mv * .[!.]* .??* ~/.Trash' # mv all files in the current directory to trash
alias sra='rm -rf * .[!.]* .??*' # delete all files in the current directory

# --------- suffix aliases --------- #
# FIXME: not sure this actually works?
alias -s json=code
alias -s py=code
alias -s txt=code

# --------- tofu --------- #
alias t='tofu'

alias tfa='tofu apply'
alias tfp='tofu plan'


#-------------- Linux service management --------------#
# Commands that would frequently be run on remote servers

# --------- systemctl --------- #
systemctl list-units --type=service --all # show all services (active, inactive, etc.)
systemctl list-unit-files --type=service --state=enabled # just the enabled services
systemctl list-units --type=service --state=running # just the active (running) services
