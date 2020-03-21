##################################################################
#   dot.zprofile
##################################################################
    X="__root__(){echo $(dirname $(grealpath $0));}";eval "$X"
    source $(dirname $0)/constants.sh
#    [ -d ${BCH_SHELL_BLD} ] || mkdir ${BCH_SHELL_BLD}
#    [ -d ${ZDOTDIR}       ] || mkdir ${ZDOTDIR}
#    echo . $(__root__)/dot.zshrc.sh > ${ZDOTDIR}/.zshrc
    export PATH=$PATH:~/.local/bin

