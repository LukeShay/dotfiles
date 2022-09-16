#!/usr/bin/env zsh

set -e

# https://hub.docker.com/editions/community/docker-ce-desktop-mac/

PWD=$(pwd)

# xcode-select --install

brew update
brew upgrade

brew tap homebrew/cask-fonts
brew tap homebrew/cask
brew tap instrumenta/instrumenta

brew uninstall --ignore-dependencies --force node

brew install \
  asdf \
  coursier/formulas/coursier \
  curl \
  gh \
  gpg \
  jq \
  neovim \
  postgres \
  starship \
  superfly/tap/flyctl \
  tar \
  zsh-completions \
  chezmoi

brew install --cask font-fira-code font-fira-code-nerd-font

git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 && nvim

mkdir -p "${HOME}/Developer"

asdf plugin-add golang https://github.com/kennyp/asdf-golang.git
asdf plugin-add java https://github.com/halcyon/asdf-java.git
asdf plugin-add nodejs https://github.com/asdf-vm/asdf-nodejs.git
asdf plugin-add python
asdf plugin-add terraform

mkdir -p "${HOME}/.warp"

cd "${HOME}/.warp"

git clone https://github.com/warpdotdev/themes.git

cd "${PWD}"
