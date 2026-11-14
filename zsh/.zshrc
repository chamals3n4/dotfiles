eval "$(oh-my-posh init zsh --config ~/.poshthemes/onehalf.minimal.omp.json)"

# History
HISTFILE="$HOME/.zsh_history"
HISTSIZE=10000
SAVEHIST=10000

setopt INC_APPEND_HISTORY
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_REDUCE_BLANKS
setopt SHARE_HISTORY

# Completion
autoload -Uz compinit
compinit

# Plugins
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#696969"

# Cloudflare WARP
alias warp='warp-cli'
alias warpc='warp-cli connect'
alias warpd='warp-cli disconnect'
alias warps='warp-cli status'

# Git
alias ginit='git init'
alias gs='git status'
alias ga='git add .'
alias gc='git commit -m'
alias gp='git push'
alias gpl='git pull'
alias gco='git checkout'
alias gb='git branch'
alias code='code .'

# General
alias c='clear'
alias e='exit'

# User binaries
export PATH="$PATH:$HOME/.local/bin"

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"

# SDKMAN
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# Go
export PATH="$PATH:/usr/local/go/bin"
export PATH="$PATH:$HOME/go/bin"

# pnpm
export PNPM_HOME="$HOME/.local/share/pnpm"
case ":$PATH:" in
    *":$PNPM_HOME:"*) ;;
    *) export PATH="$PNPM_HOME:$PATH" ;;
esac

# Ruby Gems
if [ -d "$HOME/.local/share/gem/ruby/3.2.0/bin" ]; then
    export PATH="$HOME/.local/share/gem/ruby/3.2.0/bin:$PATH"
fi

# .NET Tools
export PATH="$PATH:$HOME/.dotnet/tools"

export PATH="$HOME/tools/flutter/bin:$PATH"
export CHROME_EXECUTABLE=$(which brave-browser)

alias cs="rm -f ~/Pictures/Screenshots/*"
export QT_QPA_PLATFORM=xcb
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$ANDROID_HOME/platform-tools:$ANDROID_HOME/emulator:$PATH

# opencode
export PATH=/home/chamal/.opencode/bin:$PATH
export KUBE_EDITOR="zed --wait"

# pnpm
export PNPM_HOME='/home/chamal/.local/share/pnpm'
case ":$PATH:" in
  ":$PNPM_HOME/bin:"*) ;;
  *) export PATH="$PNPM_HOME/bin:$PATH" ;;
esac
# pnpm end


# Added by Antigravity CLI installer
export PATH="/home/chamal/.local/bin:$PATH"
alias reload='source ~/.zshrc'
