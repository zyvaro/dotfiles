export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$HOME/opt
export PATH=$PATH:~/.npm-global/bin

# Custom
fuzzy_dir() {
	DIR=$(find . -type d | fzf)
	cd $DIR
}

bind '"\C-x\C-d":"fuzzy_dir\n"'
bind -x '"\C-x\C-f":"tmux-sessionizer"'

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

source ~/.bash_completion/alacritty

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
