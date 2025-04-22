#!/bin/bash

# fancy title

cat << "HI"
    ____           __        ____         
   /  _/___  _____/ /_____ _/ / /__  _____
   / // __ \/ ___/ __/ __ `/ / / _ \/ ___/
 _/ // / / (__  ) /_/ /_/ / / /  __/ /    
/___/_/ /_/____/\__/\__,_/_/_/\___/_/     
HI

# variables for making text bold

bold=$(tput bold)
normal=$(tput sgr0)

# asking if user wants to install configs

while true; do
  read -p "${bold}DO YOU WANT TO START THE INSTALLATION NOW?${normal} (Yy/Nn): " yn
  case $yn in
  [Yy]*)
    echo ":: Installation started."
    echo
    break
   ;;
  [Nn]*)
    echo ":: Installation canceled"
    exit
    break
   ;;
  *)
    echo ":: Please answer yes or no."
    ;;
  esac
done

# Defining variables 

VIMRC="$(pwd)/DOTFILES/.vimrc"
VIMRC_PLUG="$(pwd)/DOTFILES/.vimrc.plug"
BACKUP_DIR="$HOME/.vim-oldconfigs"
VERSION=$(date +"%Y%m%d_%H%M%S")

# Function for checking operation

check_status() {
  if [$? -eq 0 ]; then
    echo "Operation successful!"
  else
    echo "Operation failed."
    exit 1
  fi
}

# Create backup directory

mkdir -p "$BACKUP_DIR/$VERSION"

# Check for existing files

if [ -f $HOME/.vimrc ]; then
  echo "Found existing .vimrc file, backing it up into $BACKUP_DIR/$VERSION"  
  mv "$HOME/.vimrc" "$BACKUP_DIR/$VERSION"
  check_status
fi

if [ -f $HOME/.vimrc.plug ]; then
  echo "Found existing .vimrc.plug file, backing it up into $BACKUP_DIR/$VERSION"  
  mv "$HOME/.vimrc.plug" "$BACKUP_DIR/$VERSION"
  check_status
fi

if [ ! -d $HOME/.vim/plug/]; then
  echo "Did not find .vim/plug directory, creating..." 
  mkdir -p "$HOME/.vim/plug/"
fi

# Copying new configs 

echo "Copying $VIMRC file to $HOME"
cp "$VIMRC" "$HOME"
check_status

echo "Copying $VIMRC_PLUG file to $HOME"
cp "$VIMRC_PLUG" "$HOME"
check_status

# fancy title

cat << "BYE"
   _____      __                 _                             __     
  / ___/___  / /___  ______     (_)____   ________  ____ _____/ /_  __
  \__ \/ _ \/ __/ / / / __ \   / / ___/  / ___/ _ \/ __ `/ __  / / / /
 ___/ /  __/ /_/ /_/ / /_/ /  / (__  )  / /  /  __/ /_/ / /_/ / /_/ / 
/____/\___/\__/\__,_/ .___/  /_/____/  /_/   \___/\__,_/\__,_/\__, /  
                   /_/                                       /____/   
BYE
echo "Your setup is ready, please report issues if any"
echo "Thank you for using my config!"
