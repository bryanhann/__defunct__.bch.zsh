export PATH=$PATH:~/.local/bin
export __BCHSHELL__=~/.config/bch.shell
export  __ZSH__=${__BCHSHELL__}/.Z #__ZSH__  # This is where various zsh stuff will be stuffed
export  ZDOTDIR=${__BCHSHELL__}/zsh          # This is where .zshrc is to be found
export  ZSH=${__ZSH__}/omzsh             # This is where Oh-My-ZSH will be cloned

source ${ZDOTDIR}/zprofile.omzsh
