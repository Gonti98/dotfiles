# File and directory listing
alias ls='eza --all --long --header --icons --git'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# Git 
alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gp='git push'
alias gpr='git pull --rebase'
alias gl='git log --graph --oneline --all'
alias gco='git checkout'
alias gcb='git checkout -b'
alias gd='git diff'
alias gb='git branch'

# System package management
alias update='sudo dnf update -y'                          # Full system update
alias install='sudo dnf install'                           # Install packages
alias remove='sudo dnf remove'                             # Remove packages
alias clean='sudo dnf autoremove -y && sudo dnf clean all' # Clean up unused packages
alias cl='clear'                                           # Clear the screen

# Kubernetes
alias k='kubectl'

# NeoVim
alias vi='nvim'

# Chezmoi
alias ch='chezmoi'
