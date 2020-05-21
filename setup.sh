mkdir -p ~/.vim/bundle
mkdir -p ~/.vim/backup
mkdir -p ~/.vim/tmp

git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim

ln -s ~/dotfiles/_vimrc ~/.vimrc
ln -s ~/dotfiles/_gvimrc ~/.gvimrc
ln -s ~/dotfiles/_zshrc ~/.zshrc
ln -s ~/dotfiles/_tmux.conf ~/.tmux.conf

#chsh -s /bin/zsh
