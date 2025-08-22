# tools setting

# deafult edditor
export EDITOR="/usr/bin/nvim"

# cargo env
. "/home/gonti/.local/share/cargo/env"

# kubectl autocompletion
complete -o default -F __start_kubectl k

# Enable Vi mode and configure prompt mode strings
set -o vi
## bind 'set show-mode-in-prompt on'

function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	IFS= read -r -d '' cwd < "$tmp"
	[ -n "$cwd" ] && [ "$cwd" != "$PWD" ] && builtin cd -- "$cwd"
	rm -f -- "$tmp"
}

# zoxide init
eval "$(zoxide init bash)"
__zoxide_cd() {
  builtin cd "$@" && ls
}

