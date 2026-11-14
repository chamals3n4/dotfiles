# dotfiles

My personal development environment for Fedora Linux, covering the shell, terminals, editors and Git. Every config is linked into place with [GNU Stow](https://www.gnu.org/software/stow/), so editing a file in your home folder edits it here too.

> [!NOTE]
> These configs are built for **Fedora** and use `dnf`. They should work on other Linux distributions if you swap in your own package manager, but that isn't tested.

### What's inside

| Folder | App | Linked to |
|---|---|---|
| `zsh` | Zsh | `~/.zshrc`, `~/.zshenv` |
| `oh-my-posh` | Oh My Posh prompt theme | `~/.poshthemes/` |
| `git` | Git | `~/.gitconfig` |
| `gh` | GitHub CLI | `~/.config/gh/` |
| `ghostty` | Ghostty terminal | `~/.config/ghostty/` |
| `kitty` | kitty terminal | `~/.config/kitty/` |
| `nvim` | Neovim ([LazyVim](https://www.lazyvim.org)) | `~/.config/nvim` |
| `zed` | Zed editor | `~/.config/zed/` |
| `vscode` | VS Code | `~/.config/Code/User/` |
| `htop` | htop | `~/.config/htop/` |

### Requirements

#### Core

These are needed for the configs themselves to work.

```bash
sudo dnf install git stow zsh zsh-autosuggestions zsh-syntax-highlighting \
  neovim ripgrep fd-find fzf gcc make unzip curl gh htop
```

Then set Zsh as your default shell and install the extras that aren't in Fedora's repos:

```bash
# make zsh the default shell (log out and back in afterwards)
chsh -s "$(which zsh)"

# Oh My Posh (prompt)
curl -s https://ohmyposh.dev/install.sh | bash -s

# lazygit (git UI used inside Neovim)
sudo dnf copr enable dejan/lazygit
sudo dnf install lazygit
```

You'll also want a [Nerd Font](https://www.nerdfonts.com) set in your terminal so prompt and editor icons display correctly.

#### Language toolchains (optional)

`.zshrc` sets up paths for these. Install only the ones you need; the shell starts fine without them.

- **Node.js:** [nvm](https://github.com/nvm-sh/nvm#installing-and-updating) and [pnpm](https://pnpm.io/installation)
- **Java:** [SDKMAN!](https://sdkman.io/install)
- **Go:** `sudo dnf install golang`
- **Rust:** [rustup](https://rustup.rs)
- **.NET:** [.NET SDK for Fedora](https://learn.microsoft.com/dotnet/core/install/linux-fedora)
- **Flutter:** [Flutter for Linux](https://docs.flutter.dev/get-started/install/linux)

### Installation

```bash
git clone git@github.com:chamals3n4/dotfiles.git ~/dotfiles
cd ~/dotfiles
./install.sh
```

`install.sh` links every folder into its place. It's safe to run again at any time. When it finishes, open a new terminal (or run `exec zsh`) to load the new shell config.

> [!IMPORTANT]
> If a config file already exists where a link should go, Stow stops instead of overwriting it. Move the old file somewhere safe (for example `mv ~/.zshrc ~/.zshrc.bak`) and run `./install.sh` again.

The first time you open Neovim, LazyVim downloads its plugins. Afterwards, run `:LazyHealth` inside Neovim to check that everything is set up.