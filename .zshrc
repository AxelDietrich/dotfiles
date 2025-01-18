# Enable Zsh completion
autoload -Uz compinit && compinit

# Enable Git branch information
autoload -Uz vcs_info
zstyle ':vcs_info:git:*' formats '%b'       # Display only the branch name
zstyle ':vcs_info:*' enable git             # Enable Git integration for vcs_info

# Enable prompt expansion
setopt prompt_subst

# Set up the prompt dynamically
precmd() {
    vcs_info
    if [[ -n ${vcs_info_msg_0_} ]]; then
        PROMPT='%B%F{cyan}%n@%m%f %1~%b %F{green}git:(%f%F{red}${vcs_info_msg_0_}%f%F{green})%f %# '
    else
        PROMPT='%B%F{cyan}%n@%m%f %1~%b %# '
    fi
}

eval $(keychain --eval --quiet --agents ssh id_ed25519)
