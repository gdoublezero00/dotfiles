mkdir -p ~/.vim/backup
mkdir -p ~/.vim/tmp

ln -s ~/dotfiles/_vimrc ~/.vimrc
ln -s ~/dotfiles/_gvimrc ~/.gvimrc
ln -s ~/dotfiles/_zshrc ~/.zshrc
ln -s ~/dotfiles/_tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/_gitconfig ~/.gitconfig
ln -s ~/dotfiles/_commit_template ~/.commit_template

#chsh -s /bin/zsh

mkdir -p ~/.dein
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
# For example, we just use `~/.cache/dein` as installation directory
sh ./installer.sh ~/.dein

ln -s ~/dotfiles/vim/rc ~/.vim/rc