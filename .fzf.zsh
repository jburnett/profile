# Setup fzf
# ---------
## 05/30/2023, JB: use brew's fzf, not this one
# if [[ ! "$PATH" == */usr/local/opt/fzf/bin* ]]; then
#   PATH="${PATH:+${PATH}:}/usr/local/opt/fzf/bin"
# fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/usr/local/opt/fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/usr/local/opt/fzf/shell/key-bindings.zsh"
