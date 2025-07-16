#!/usr/bin/env bash

set -e

ZSH_ENV_DIR=".zsh_env"

# Skip if already installed
if [ -d "$ZSH_ENV_DIR/oh-my-zsh" ]; then
  echo "✅ Oh My Zsh already installed"
  exit 0
fi

echo "⬇️ Installing Oh My Zsh..."
git clone --depth=1 https://github.com/ohmyzsh/ohmyzsh.git "$ZSH_ENV_DIR/oh-my-zsh"

echo "⬇️ Installing Powerlevel10k..."
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "$ZSH_ENV_DIR/oh-my-zsh/custom/themes/powerlevel10k"

echo "⬇️ Installing Zsh plugins..."
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$ZSH_ENV_DIR/oh-my-zsh/custom/plugins/zsh-syntax-highlighting"
git clone https://github.com/zsh-users/zsh-autosuggestions "$ZSH_ENV_DIR/oh-my-zsh/custom/plugins/zsh-autosuggestions"
