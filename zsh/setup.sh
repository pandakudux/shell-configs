#!/usr/bin/env zsh

# Install oh-my-zsh if not present
if [ ! -d "$HOME/.oh-my-zsh" ]; then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
  echo "installed oh-my-zsh"
fi

# Symlink zshrc config
ln -sf ~/shell-configs/zsh/.zshrc ~/.zshrc
echo "established .zshrc symlink "

# Symlnk custom themes and plugins
src=~/shell-configs/zsh/custom
dst=~/.oh-my-zsh/custom

cd "$src"

find . -type d -exec mkdir -p "$dst/{}" \;
find . -type f -exec ln -sf "$src/{}" "$dst/{}" \;

# Symlink custom oh-my-zsh plugins
# ln -sf ~/shell-configs/zsh/custom ~/.oh-my-zsh/custom
cd ~
echo "established oh-my-zsh/custom symlink"

echo "Setup complete! Restarting terminal..."
exec zsh
