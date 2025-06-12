# tools setting

# zoxide init
eval "$(zoxide init bash)"

# cargo env
. "/home/gonti/.local/share/cargo/env"

# kubectl autocompletion
complete -o default -F __start_kubectl k

