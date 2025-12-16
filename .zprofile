## .zprofile only runs once on login##
# echo "--- .zprofile ---"

# Enable color output for supported CLI apps
export CLICOLOR=true

# Settings for both interactive and non-interactive shells
export PATH="$HOME/.cargo/bin:$HOME/.dotnet/tools:$PATH"

export PATH="/Users/jb/.local/share/solana/install/active_release/bin:$PATH"

if [ -f "/opt/homebrew/bin/brew" ] ; then
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# added by Particle CLI
# add home bin directory to PATH if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi
