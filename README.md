My Linux development environment managed with chezmoi.

Managed Configurations

- Zsh (`.zshrc`, `.zshenv`)
- Git (`.gitconfig`)
- Oh My Posh theme
- htop
- neofetch

Requirements

- Git
- Zsh
- chezmoi
- Oh My Posh
- NVM
- SDKMAN!
- pnpm
- Go
- .NET SDK

Bootstrap

Install chezmoi:

```bash
sh -c "$(curl -fsLS https://get.chezmoi.io)"
```

Initialize from GitHub:

```bash
chezmoi init git@github.com:chamals3n4/dotfiles.git
```

Apply the configuration:

```bash
chezmoi apply
```

Updating Configurations

Edit a managed file directly:

```bash
chezmoi add ~/.zshrc
```

Or edit using chezmoi:

```bash
chezmoi edit ~/.zshrc
chezmoi apply
```

Commit and push changes:

```bash
cd ~/.local/share/chezmoi
git add .
git commit -m "Update configuration"
git push
```
