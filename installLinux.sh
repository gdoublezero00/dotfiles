#!/bin/bash

FuncDocker () {

curl https://get.docker.com | sh	

}

FuncLXD () {

cat << EOS >> hello.txt
user.max_user_namespaces = 3883
fs.inotify.max_queued_events = 1048576
fs.inotify.max_user_instances = 1048576
fs.inotify.max_user_watches = 1048576
vm.max_map_count = 262144
net.ipv4.ip_forward = 1
EOS

cat << EOS >> hello.txt
*               soft    nofile          1048576
*               hard    nofile          1048576
root            soft    nofile          1048576
root            hard    nofile          1048576
*               soft    memlock         unlimited
*               hard    memlock         unlimited
EOS
sudo apt install -y lxd lxd-client lxd-tools criu zfsutils-linux
	#apt install build-essential libffi-dev 
}

FuncPyenv () {
sudo apt install -y build-essential \
	libffi-dev \
	libssl-dev \
	zlib1g-dev \
	liblzma-dev \
	libbz2-dev \
	libreadline-dev \
	libsqlite3-dev \
	git

git clone https://github.com/pyenv/pyenv.git ~/.pyenv
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshrc
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zshrc
echo 'eval "$(pyenv init -)"' >> ~/.zshrc
source ~/.zshrc
}

FuncGoenv () {
git clone https://github.com/syndbg/goenv.git ~/.goenv
echo 'export GOENV_ROOT=$HOME/.goenv' >> ~/.zshrc
echo 'export PATH=$GOENV_ROOT/bin:$PATH' >> ~/.zshrc
echo 'eval "$(goenv init -)"' >> ~/.zshrc
}


case "$1" in
	"docker") FuncDocker
	;;
	"LXD") FuncLXD
	;;
	"pyenv") FuncPyenv
	;;
	"goenv") FuncGoenv
	;;

esac

