#!/usr/bin/env zsh

# Install oh-my-zsh if not present
if [ ! -d "$HOME/.oh-my-zsh" ]; then    
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
  echo "installed oh-my-zsh"
fi

# Symlink zshrc config
ln -sf ~/.dotfiles/zsh/.zshrc ~/.zshrc
echo "established .zshrc symlink "
# Symlink custom oh-my-zsh plugins
ln -sf ~/.dotfiles/zsh/custom ~/.oh-my-zsh/custom
echo "established oh-my-zsh/custom symlink"

echo "Setup complete! Restarting terminal..."
exec zsh