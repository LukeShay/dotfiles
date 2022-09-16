
alias ichown='sudo find ~ -type d -user root -exec sudo chown -hR $USER: {} +'

# === Docker aliases ===
alias dcp="docker-compose"
alias di="docker images"
alias dp="docker ps"
alias drm="docker rm"
alias drmi="docker rmi"
alias xdrm="xargs docker rm"
alias xdrmi="xargs docker rmi"
alias dsp="docker system prune"

# === Alias ===
alias z="source ${HOME}/.zshrc"
alias te="open -a TextEdit"
alias c="code"
alias ls.git.config="git config user.name 'Luke Shay' && git config user.email 'shay.luke17@gmail.com'"
alias berry="yarn policies set-version berry && yarn set version berry"

load_env() {
    if [[ -f "${1}" ]]; then
        export $(cat "${1}" | sed 's/#.*//g' | xargs)
    fi
}

use_envrc() {
    if [[ -f ".envrc" ]]; then
        echo ".envrc file found..."
        source ".envrc"
    fi
}

use_asdf() {
    if [[ -f ".tool-versions" ]]; then
        echo ".tool-versions file found..."
        asdf install &> /dev/null
    fi
}

alias le="load_env"
alias tf='terraform'

# === Directory Aliases ===
alias dev="cd ${HOME}/Developer"
alias ff="cd ${HOME}/Developer/friendfetcher"

# === Editor Aliases ===
alias vim="nvim"
alias vi="nvim"
alias v="nvim"
alias nvm="nvim"
alias nvmi="nvim"
