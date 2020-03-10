export XDG_CONFIG_HOME=${HOME}/.config
export XDG_CACHE_HOME=${HOME}/.cache
export PIP_DOWNLOAD_CACHE=${HOME}/.cache/pip

source ${HOME}/.config/bash/vital/nesting
source ${HOME}/.config/bash/vital/prompt
source ${HOME}/.config/bash/misc/rxx
source ${HOME}/.config/bash/misc/watch


[ -f ${HOME}/.local/config/bash/bashrc ] && source ${HOME}/.local/config/bash/bashrc

function gpip    { PIP_REQUIRE_VIRTUALENV="" pip "$@"; }
function cfg     { pushd ~/.config/bash; }
function sg      { set | grep $1 ; }
function bhpip    { pip --cache-dir ${PIP_DOWNLOAD_CACHE} $* ; }
function cfg_link { [ -s ${HOME}/.$1 ] || ln -s ${HOME}/.config/$1 ${HOME}/.$1; }

function clean {
    rm -rf __pycache_ 2> /dev/null
    rm *.pyc         2> /dev/null
    rm .pytest_cache 2> /dev/null
}

function bh_install_vim_runtime {
    git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
    sh ~/.vim_runtime/install_awesome_vimrc.sh
}

cfg_link pip

set | grep ^bh_install
