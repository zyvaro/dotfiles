export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$HOME/opt
export PATH=$PATH:~/.npm-global/bin

# bindkey -s '^x^f' "tmux-sessionizer\n"
bind -x '"/C-x/C-f":"tmux-sessionizer"'

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
