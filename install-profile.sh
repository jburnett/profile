
# Remove existing dotfiles if a symlink
if [ -L $HOME/dotfiles ]; then
    rm -r $HOME/dotfiles
else
    if [[ -e $HOME/dotfiles ]]; then
        echo "Cannot remove $HOME/dotfiles because it is not a symlink."
        exit 1
    fi
fi
# Create symlink to dotfiles
# TODO: might be handy to discover git repo location rather than hard coding
ln -s $HOME/src/github.com/jburnett/profile/dotfiles $HOME/dotfiles

# Remove existing symlinks for .zprofile
if [ -L $HOME/.zprofile ]; then
    # echo "removing .zoprofile symlink"
    rm -f $HOME/.zprofile
else
    if [[ -e $HOME/.zprofile ]]; then 
        echo "Cannot remove $HOME/.zprofile because it is not a symlink."
        exit 1
    fi
fi
#echo 'Create symlink for ~/.zprofile'
ln -s $HOME/src/github.com/jburnett/profile/.zprofile $HOME/.zprofile

# Remove existing symlinks for .zshrc
if [ -L $HOME/.zshrc ]; then
    # echo "removing .zshrc symlink"
    rm -f $HOME/.zshrc
else
    if [ -e $HOME/.zshrc ]; then 
        echo "Cannot remove $HOME/.zshrc because it is not a symlink."
        exit 1
    fi
fi
# echo 'Create symlink for ~/.zshrc'
ln -s $HOME/src/github.com/jburnett/profile/.zshrc $HOME/.zshrc


# Remove existing symlink for oh-my-zsh
if [ -L $HOME/.oh-my-zsh ]; then
    echo "Removing .oh-my-zsh symlink"
    rm -f $HOME/.oh-my-zsh
else
    if [ -e $HOME/.oh-my-zsh ]; then 
        echo "Cannot remove $HOME/.oh-my-zsh because it is not a symlink."
        exit 1
    fi
fi
echo "Creating symlink for ~/.oh-my-zsh"
ln -s $HOME/src/github.com/jburnett/profile/oh-my-zsh $HOME/.oh-my-zsh

# Remove existing symlink for z-rupa
if [ -L $HOME/.z-rupa ]; then
    echo "Removing .z-rupa symlink"
    rm -f $HOME/.z-rupa
else
    if [ -e $HOME/.z-rupa ]; then 
        echo "Cannot remove $HOME/.z-rupa because it is not a symlink."
        exit 1
    fi
fi
echo "Creating symlink for ~/.z-rupa"
ln -s $HOME/src/github.com/jburnett/profile/z-rupa $HOME/.z-rupa
