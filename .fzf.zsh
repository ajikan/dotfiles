# Setup fzf
# ---------
if [[ ! "$PATH" == */Users/andrewzhang/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/Users/andrewzhang/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/Users/andrewzhang/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/Users/andrewzhang/.fzf/shell/key-bindings.zsh"
