#--------------------------------------------------------------------------
# WARNING: The following two lines must coe first.
# WARNING: __BCHSHELL__ is deliberately hardcoded to simplify code.
#--------------------------------------------------------------------------
export __BCHSHELL__=~/.config/bch.shell
source ${__BCHSHELL__}/posix/dunders.sh

__source__ ${__BCHSHELL__}/posix/venv.sh
__source__ ${__BCHSHELL__}/bash/misc
echo "________________ .zshrc ___________________"
__source__ ${__BCHSHELL__}/zsh/dot.zshrc

compinit -d ~/.cache/zsh/zcompdump-$ZSH_VERSION
