#!/bin/sh

ZSHENV_FILE=$HOME/.zshenv

write_to_zshenv() {
  {
    echo
    echo '# ---Auto generated by printc plugin---'
    echo 'fpath=($HOME/.oh-my-zsh/plugins/printc $fpath)'
    echo 'ZSH=$HOME/.oh-my-zsh'
    echo '# -------------------------------------'
    echo
  } >> "$ZSHENV_FILE"
}

if [ -e "$ZSHENV_FILE" ]; then
  write_to_zshenv
else
  touch "$HOME/.zshenv"
  write_to_zshenv
fi