#!/usr/bin/zsh

git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
	ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zshrc_custom" ]]; then
  source "${ZDOTDIR:-$HOME}/.zshrc_custom"
fi
EOS

echo "zstyle :prezto:module:prompt theme powerlevel10k" >> ~/.zpreztorc
ln -s
ln -s ~/dotfiles/_p10k.zsh ~/.p10k.zsh

echo "--- Show powerlevel10k ---"
echo "  https://github.com/romkatv/powerlevel10k#prezto"
