# Dotfiles

This repository contains configuration files for my machines. It uses `Chezmoi` to manage dotfiles and `Ansible` for imperative package installation.

# How to run?

```
export PATH="$HOME/.local/bin:$PATH" && sh -c "$(curl -fsLS get.chezmoi.io/lb)" -- init --apply Gonti98
```
