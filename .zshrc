# echo "--- .zshrc ---"


# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="bureau"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "nebirhos" "sunrise" "bureau" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

#####
# 04/10/2023, JB: reduced dups in PATH by checking is already in PATH
# 08/02/2021, JB: include go
if [ -d /usr/local/go/bin ]; then
    # if not already in PATH
    if [[ $PATH == ?(*:)/usr/local/go/bin?(:*) ]]; then
        PATH=$PATH:/usr/local/go/bin
    fi
fi
# 04/05/2021, JB: include user go bins in path
if [ -d $HOME/go/bin ]; then
    # if not already in PATH
    if [[ $PATH == ?(*:)$HOME/go/bin?(:*) ]]; then
        PATH=$PATH:$HOME/go/bin
    fi
fi
if [ -d $HOME/.cargo/bin ]; then
    # if not already in PATH
    if [[ $PATH == ?(*:)$HOME/.cargo/bin?(:*) ]]; then
        PATH=$PATH:$HOME/.cargo/bin
    fi
fi
# 08/02/2021, JB: include ~/.local/bin for protoc
if [ -d $HOME/.local/bin ];then
    # if not already in PATH
    if [[ $PATH == ?(*:)$HOME/.local/bin?(:*) ]]; then
        PATH=$PATH:$HOME/.local/bin
    fi
fi

# 04/08/2021, JB: added for cabal builds for Cardano
export LD_LIBRARY_PATH="/usr/local/lib:$LD_LIBRARY_PATH"
export PKG_CONFIG_PATH="/usr/local/lib/pkgconfig:$PKG_CONFIG_PATH"


# 04/16/2021, JB: added nvm support
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# 05/22/2023, JB: added DOTNET_ROOT
if [ -d /usr/share/dotnet ]; then
    if [ -z $DOTNET_ROOT ]; then
        export DOTNET_ROOT=/usr/share/dotnet
    fi
fi


# 05/30/2023, JB: added starship for more info at prompts
#  if whence finds starship, start it
whence -p starship > /dev/null 2>&1 && eval "$(starship init zsh)"


### DON'T add below here

source $ZSH/oh-my-zsh.sh
source $HOME/.z-rupa/z.sh
source $HOME/dotfiles/.aliases
if command -v plz; then
    source <(plz --completion_script)
fi

# Finally, source local .env, if it exists, to override any of these defaults
if [ -f ".env" ]; then
    echo "Loading local .env"
    source .env
fi

### DON'T add here; add above the source statements

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
