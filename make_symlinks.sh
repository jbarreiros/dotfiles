#!/bin/bash

if ! command -v git-lfs >/dev/null 2>&1; then
    echo "Git LFS is not installed."
    echo "After installing, remove this repo's '.fonts' folder and"
    echo "'git pull' to ensure font files are not pointers."
    exit 1
fi

if ! command -v zsh >/dev/null 2>&1; then
    echo "Zsh is not installed."
    exit 1
fi

if ! command -v nvim >/dev/null 2>&1; then
    echo "Neovim is not installed."
    exit 1
fi

if ! command -v nvm >/dev/null 2>&1; then
    echo "NVM is not installed."
    echo "Install NVM without updating shell config: PROFILE=/dev/null bash -c 'curl ...'"
    exit 1
fi

echo "---"
echo "Install Starship Prompt:"
echo "https://starship.rs/guide/"
echo ""
echo "Install zsh-syntax-highlighting:"
echo "https://github.com/zsh-users/zsh-syntax-highlighting?tab=readme-ov-file"
echo "---"
read -p "ENTER to continue..."

FILES=(
    .bashrc
    .fonts
    .gitattributes
    .gitconfig
    .tmux.conf
    .vimrc
    .zshrc
    .config/nvim/init.vim
    .config/ghostty/config
)

# back up any existing dotfiles
NOW=$(date +"%d-%m-%Y")
BACKUP_FOLDER="dotfiles_$NOW"
mkdir -p ~/$BACKUP_FOLDER
echo "Backing up existing dot files to ~/$BACKUP_FOLDER..."
for file in $FILES; do
  if [ -f ~/$file ]; then
    echo "-- Backing up ~/$file"
    mv ~/$file ~/$BACKUP_FOLDER/
  fi
done

# make the symlinks
BASE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
echo "Creating symlinks..."
for file in $FILES; do
  echo "-- Symlinking $file"
  ln -s $BASE_DIR/$file ~/$file
done

