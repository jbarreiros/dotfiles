#!/bin/bash

FILES=".bashrc .fonts .gitattributes .gitconfig .tmux.conf .vimrc .zshrc"

echo "Prerequisites:"
echo "- GitL-LFS"
echo "- zsh (https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH)"
echo "- antigen (https://github.com/zsh-users/antigen)"
echo "- tmux"
echo ""
echo "Fonts:"
echo "  If Git-LFS was installed after pulling repo, remove '.fonts' folder and"
echo "  pull it down to ensure font files are not pointers."
echo "  If Fedora, 'fc-cache -v'"
echo ""

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
