# Autocompletion
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)

# Enable version control system
autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats '%b '
setopt PROMPT_SUBST
PROMPT='%F{blue}%~%f %F{red}${vcs_info_msg_0_}%f$ '

# Vi Mode
export EDITOR=nvim
bindkey -v
autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line
export KEYTIMEOUT=1 # ?

# Bindings
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -M menuselect 'l' vi-forward-char

alias -- config='nvim $HOME/.config/nixos'
alias -- cp='cp -i'
alias -- df='df -h'
alias -- du='du -h'
alias -- free='free -h'
alias -- gpt='tgpt -m'
alias -- ln='ln -i'
alias -- mv='mv -i'
alias -- rm='rm -i'
alias -- vi=nvim
alias -- vim=nvim

alias -- clean-all='sudo nix-collect-garbage -d && clean-boot'
alias -- clean-boot='sudo /run/current-system/bin/switch-to-configuration boot'
alias -- home-rebuild='home-manager switch --flake ~/.config/nixos'
alias -- sys-rebuild='nixos-rebuild switch --flake ~/.config/nixos --use-remote-sudo'
alias -- sys-update='nix flake update --flake ~/.config/nixos && sys-rebuild'

set -o vi
