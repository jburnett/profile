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
if [[ -f /usr/share/doc/fzf/examples/key-bindings.zsh ]]; then
    # Linux location
    source /usr/share/doc/fzf/examples/key-bindings.zsh
else
    # MacOS location
    source "/usr/local/opt/fzf/shell/key-bindings.zsh"
fi
