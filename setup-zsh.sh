#! /bin/bash

zsh_customizations_dir=${HOME}/.zsh_customizations

mkdir -p $zsh_customizations_dir

cd $zsh_customizations_dir
git clone git@github.com:zsh-users/zsh-autosuggestions.git
cd $HOME

# Create simlinks to my dotfiles
ln -s ${HOME}dotfiles/.zshrc ${HOME}/.zshrc
ln -s ${HOME}dotfiles/.bashrc ${HOME}/.bashrc
ln -s ${HOME}dotfiles/.aliases ${HOME}/.aliases
