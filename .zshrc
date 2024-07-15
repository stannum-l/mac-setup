# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Prezto
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source ${ZDOTDIR:-$HOME}/.zprezto/init.zsh
fi


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source ~/.powerlevel10k/powerlevel10k.zsh-theme

autoload -Uz compinit
compinit

source /opt/homebrew/opt/asdf/libexec/asdf.sh

# Setting ASDF setting
source $HOME/.asdf/plugins/java/set-java-home.zsh
source $HOME/.asdf/plugins/golang/set-env.zsh

# Kubernetes
source <(kubectl completion zsh)
[[ ! -f ~/.kubectl_alias ]] || source ~/.kubectl_alias
[[ ! -f ~/.kubectl_crd_alias ]] || source ~/.kubectl_crd_alias

# Better directory color
eval $(gdircolors $HOME/.dir_colors_eza)

export PATH="$HOME/.local/bin:/opt/homebrew/bin:$PATH"
export PATH="/opt/homebrew/opt/curl/bin:$PATH"

# ALL the alias
alias vim="nvim"

alias cat='bat --paging=never --style plain'
alias catn='bat --paging=never'

alias ls='eza --classify --across'
alias l='eza --classify --oneline'
alias ll='eza --classify --long --group'
alias llg='eza --classify --long --grid --group'
alias tree='eza --classify --tree'
alias lrt='eza --classify --long --group --sort newest'

export EZA_GRID_ROWS=3

export GPG_TTY=$(tty)

# rm -rf /Users/tinlam/.asdf/plugins/nodejs/.node-build
