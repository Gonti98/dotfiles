# XDG Base Directory Specification #
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"

## XDG vars

### .config
export DOCKER_CONFIG="${XDG_CONFIG_HOME}"/docker
export GTK2_RC_FILES="${XDG_CONFIG_HOME}"/gtk-2.0/gtkrc

### .local/share
export ANSIBLE_HOME="${XDG_DATA_HOME}"/ansible
export CARGO_HOME="${XDG_DATA_HOME}"/cargo
export GNUPGHOME="$XDG_DATA_HOME"/gnupg
export NVM_DIR="$XDG_DATA_HOME"/nvm
export RUSTUP_HOME="$XDG_DATA_HOME"/rustup
export VAGRANT_HOME="$XDG_DATA_HOME"/vagrant
alias wget=wget --hsts-file="$XDG_DATA_HOME/wget-hsts"

### .local/state
export HISTFILE="${XDG_STATE_HOME}"/bash/history

# NPM
export NPM_CONFIG_INIT_MODULE="$XDG_CONFIG_HOME"/npm/config/npm-init.js
export NPM_CONFIG_CACHE="$XDG_CACHE_HOME"/npm
export NPM_CONFIG_TMP="$XDG_RUNTIME_DIR"/npm

