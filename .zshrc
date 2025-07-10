# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=100000000
setopt autocd beep extendedglob nomatch notify
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '$HOME/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
source ~/.pathfile # Load the PATH variable
source ~/.aliasfile # Load the file with the aliases

. "$HOME/.atuin/bin/env"

eval "$(atuin init zsh)"
eval "$(zoxide init zsh --cmd=cd)"
eval "$(oh-my-posh init zsh)"

alias ls=eza
alias now="date +%Y-%m-%d_%H-%M-%S"
alias avidemux="avidemux3_qt6 -platform 'xcb'"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# export LULE_W=$HOME/Pictures/Ponies
# export LULE_S=$HOME/apply_colors.sh

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
unset SSH_ASKPASS

# bun completions
[ -s "/home/sunburst/.bun/_bun" ] && source "/home/sunburst/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
