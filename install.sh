#!/usr/bin/env bash
# Links every config in this repo into place using GNU Stow.
set -e
cd "$(dirname "$0")"

command -v stow >/dev/null || sudo dnf install -y stow

# link <folder> <where it goes>
link() {
  mkdir -p "$2"
  stow --restow --target="$2" "$1"
  echo "✓ $1 → $2"
}

link zsh        "$HOME"
link git        "$HOME"
link oh-my-posh "$HOME/.poshthemes"
link gh         "$HOME/.config/gh"
link ghostty    "$HOME/.config/ghostty"
link kitty      "$HOME/.config/kitty"
link zed        "$HOME/.config/zed"
link vscode     "$HOME/.config/Code/User"
link htop       "$HOME/.config/htop"
