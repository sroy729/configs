#!/bin/bash

# Exit on error
set -e

echo "Starting setup of Neovim and Tmux..."

# Update package lists
echo "Updating package lists..."
sudo apt update

# Install neovim and tmux using apt
echo "Installing Neovim and Tmux..."
sudo apt install -y neovim tmux wget curl git

# Create config directories if they don't exist
echo "Creating config directories..."
mkdir -p ~/.config/tmux
mkdir -p ~/.config/nvim
mkdir -p "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload

# Download and install Neovim appimage
echo "Downloading Neovim appimage..."
wget -O nvim.appimage https://github.com/neovim/neovim/releases/download/nightly/nvim-linux-x86_64.appimage

# Make it executable
chmod +x nvim.appimage

# Check current permissions of nvim
if [ -f /bin/nvim ]; then
  NVIM_PERMS=$(stat -c "%a" /bin/nvim)
else
  # Default permissions if nvim doesn't exist
  NVIM_PERMS="755"
fi

# Move appimage to /bin/nvim
echo "Installing Neovim appimage to /bin/nvim..."
sudo mv nvim.appimage /bin/nvim
sudo chmod $NVIM_PERMS /bin/nvim

# Download tmux config
echo "Downloading and setting up Tmux configuration..."
wget -O ~/.config/tmux/tmux.conf https://raw.githubusercontent.com/sroy729/configs/main/tmux/tmux.conf

# Install Vim-Plug
echo "Installing Vim-Plug..."
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# Download Neovim config
echo "Downloading and setting up Neovim configuration..."
wget -O ~/.config/nvim/init.vim https://raw.githubusercontent.com/sroy729/configs/main/init.vim

echo "Installation completed successfully!"
echo "To finalize Neovim plugin installation, open Neovim and run :PlugInstall"
