source $(dirname $0)/__dunders__.sh

export XDG_CONFIG_HOME=${HOME}/.config
export XDG_CACHE_HOME=${HOME}/.cache
export BCH_SHELL_DIR=$(__root__)
export BCH_SHELL_BLD=$(__root__)/.B
export BCH_SHELL_VENV=${BCH_SHELL_BLD}/3
export PROJECT_HOME=~/dev
export VIRTUALENVWRAPPER_HOOK_DIR=$(__root__)/hooks/virtualenv
export PIP_DOWNLOAD_CACHE=${HOME}/.cache/pip

export ZSH=${BCH_SHELL_BLD}/omzsh
export ZDOTDIR=${BCH_SHELL_BLD}/zdotdir

[ -d ${BCH_SHELL_BLD} ] || mkdir ${BCH_SHELL_BLD}
[ -d ${ZDOTDIR}       ] || mkdir ${ZDOTDIR}

__link__ pip

