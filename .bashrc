#--------------------------------------------------------------------------
# WARNING: BCH_SHELL is deliberately hardcoded to simplify code.
#--------------------------------------------------------------------------
export BCH_SHELL=~/.config/bch.shell

#--------------------------------------------------------------------------
# WARNING: The dunders must be sourced FIRST.
#--------------------------------------------------------------------------
source ${BCH_SHELL}/posix/dunders

__source__ ${BCH_SHELL}/posix/venv.sh
__source__ ${BCH_SHELL}/bash/misc
__source__ ${BCH_SHELL}/bash/prompt.d/prompt
echo ACTIVE PYTHON IS: $(wpy)
echo $(pc)



