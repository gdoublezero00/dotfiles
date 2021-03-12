#!/usr/bin/zsh

git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
	ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done

cat <<EOS >> ~/.zshrc
autoload -Uz promptinit
promptinit
prompt adam1

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zshrc_custom" ]]; then
  source "${ZDOTDIR:-$HOME}/.zshrc_custom"
fi
EOS
