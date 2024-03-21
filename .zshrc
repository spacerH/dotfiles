# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH


ZSH_THEME="jonathan"

plugins=( 
    git
    archlinux
    zsh-autosuggestions
    zsh-syntax-highlighting
)
source ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

export ZSH="$HOME/.oh-my-zsh"
export VISUAL="/usr/bin/nvim"
export EDITOR="$VISUAL"

source $ZSH/oh-my-zsh.sh

# Check archlinux plugin commands here
# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/archlinux


# Display Pokemon-colorscripts
# Project page: https://gitlab.com/phoneybadger/pokemon-colorscripts#on-other-distros-and-macos
#pokemon-colorscripts --no-title -s -r


### From this line is for pywal-colors
# Import colorscheme from 'wal' asynchronously
# &   # Run the process in the background.
# ( ) # Hide shell job control messages.
# Not supported in the "fish" shell.
(cat ~/.cache/wal/sequences &)

# Alternative (blocks terminal for 0-3ms)
#cat ~/.cache/wal/sequences

# To add support for TTYs this line can be optionally added.
#source ~/.cache/wal/colors-tty.sh

alias nv="nvim"
alias nw="~/.config/hypr/UserScripts/NewWall.sh"
alias ls="eza -a --long"
alias im="swayimg"
alias manga="opencomic ~/manga"
alias save="rclone sync ~/diary/ Google:"
alias sync="rclone sync Google: ~/diary/"
alias yz="yazi"

eval "$(zoxide init zsh)"
eval "$(atuin init zsh)"
