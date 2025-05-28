# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

# User specific environment and startup programs

. "$HOME/.atuin/bin/env"
source $HOME/.atuin/bin/env



# Added by Toolbox App
export PATH="$PATH:/home/sunburst/.local/share/JetBrains/Toolbox/scripts"
