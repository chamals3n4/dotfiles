# dotfiles

My Fedora dev configs, managed with [GNU Stow](https://www.gnu.org/software/stow/).

## What's inside

| Folder | Config |
|---|---|
| `zsh` | `.zshrc`, `.zshenv` |
| `git` | `.gitconfig` |
| `gh` | GitHub CLI settings |
| `oh-my-posh` | prompt theme |
| `ghostty` | Ghostty terminal |
| `kitty` | kitty terminal |
| `zed` | Zed editor settings + themes |
| `vscode` | VS Code settings |
| `htop` | htop settings |

## Setup

````bash
sudo dnf install stow
git clone git@github.com:chamals3n4/dotfiles.git ~/dotfiles
cd ~/dotfiles
./install.sh
````

Also needs: zsh, Oh My Posh, NVM, SDKMAN!, pnpm, Go, .NET SDK
