## .zprofile only runs once on login##
# echo "--- .zprofile ---"

# Enable color output for supported CLI apps
export CLICOLOR=true

# Settings for both interactive and non-interactive shells
if [ -d "$HOME/.cargo/bin" ] ; then
    export PATH="$HOME/.cargo/bin:$PATH"
fi
if [ -d "$HOME/.dotnet/tools" ] ; then
    export PATH="$HOME/.dotnet/tools:$PATH"
fi
if [ -d "$HOME/.local/share/solana/install/active_release/bin" ] ; then
    export PATH="$HOME/.local/share/solana/install/active_release/bin:$PATH"
fi

export PATH="/Users/jb/.local/share/solana/install/active_release/bin:$PATH"

if [ -f "/opt/homebrew/bin/brew" ] ; then
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# added by Particle CLI
# add home bin directory to PATH if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi
