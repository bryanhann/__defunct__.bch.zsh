#--------------------------------------------------------------------------
# WARNING: The following two lines must coe first.
# WARNING: __BCHSHELL__ is deliberately hardcoded to simplify code.
#--------------------------------------------------------------------------
export __BCHSHELL__=~/.config/bch.shell
source ${__BCHSHELL__}/.dunders.sh

__source__ ${__BCHSHELL__}/posix/venv.sh
__source__ ${__BCHSHELL__}/posix/misc
__source__ ${__BCHSHELL__}/bash/prompt.d/prompt
echo $(pc)



