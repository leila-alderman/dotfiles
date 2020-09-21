# zsh configurations

# rbenv path setup
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# Change prompt
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
zstyle ':vcs_info:git:*' formats '%F{11}%b%f'
zstyle ':vcs_info:*' enable git

PROMPT='%(?.%F{green}√.%F{red}?%?)%f [%B%F{blue}%1~%f%b:'\$vcs_info_msg_0_'] %# '
