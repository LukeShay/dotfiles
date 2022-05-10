# dotfiles

## Setting up a new Mac

1. Install brew
  1. Run `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"` to install brew
1. Run `brew install chezmoi` to install chezmoi
1. Run `chezmoi init https://github.com/lukeshay/dotfiles.git` to download the chezmoi config
1. Run `chezmoi apply -v` to install the configuration
1. Run `. "${HOME}/mac.sh"` to install all tools

## Resources

* [chezmoi](https://www.chezmoi.io/)
* [asdf](https://asdf-vm.com/)
