# Determine if fzf on Linux
if [[ -f /usr/share/doc/fzf/examples/completion.zsh ]]; then

  # Setup fzf
  # ---------
  ## No need to set path b/c fzf should be installed in /usr/bin

  # Auto-completion
  # ---------------
  source /usr/share/doc/fzf/examples/completion.zsh

  # Key bindings
  # ------------
  source /usr/share/doc/fzf/examples/key-bindings.zsh

else # MacOS

  # Setup fzf
  # ---------
  if [[ ! "$PATH" == */usr/local/opt/fzf/bin* ]]; then
    PATH="${PATH:+${PATH}:}/usr/local/opt/fzf/bin"
  fi

  # Auto-completion
  # ---------------
  source "/usr/local/opt/fzf/shell/completion.zsh"

  # Key bindings
  # ------------
  source "/usr/local/opt/fzf/shell/key-bindings.zsh"

fi
