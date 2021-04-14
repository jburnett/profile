
# TODO: might be handy to discover git repo location rather than hard coding
if [ -d $HOME/dotfiles ]; then
    rm -r $HOME/dotfiles
fi

ln -s $HOME/src/github.com/jburnett/profile/dotfiles $HOME/dotfiles

