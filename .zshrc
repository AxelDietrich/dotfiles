autoload -Uz compinit && compinit
autoload -Uz vcs_info
precmd() {
    vcs_info
    if [[ -z ${vcs_info_msg_0_} ]]; then
        PS1='%B%F{cyan}%n@%m%f %1~%b %# '
    else
        PS1='%B%F{cyan}%n@%m%f %1~%b %F{green}git:(%f%F{red}${vcs_info_msg_0_}%f%F{green})%f %# '
    fi
}

precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst

if [ -z "$SSH_AUTH_SOCK" ]; then
    eval "$(ssh-agent -s)"
    ssh-add ~/.ssh/id_rsa
fi
