##################################################################
#   dot.zprofile
##################################################################
    X="__root__(){echo $(dirname $(grealpath $0));}";eval "$X"
    source ~/.local/bch/dunders/dunders.sh
    source $(dirname $0)/__constants__.sh

#---------------------------------------------------------
# Create vital directories
#---------------------------------------------------------
    [ -d ${BCH_SHELL_BLD} ] || mkdir ${BCH_SHELL_BLD}
    [ -d ${ZDOTDIR}       ] || mkdir ${ZDOTDIR}

#---------------------------------------------------------
# Insure that our zshrc is found
#---------------------------------------------------------
    echo . $(__root__)/dot.zshrc.sh > ${ZDOTDIR}/.zshrc

#---------------------------------------------------------
# Update PATH
#---------------------------------------------------------
    export PATH=$PATH:~/.local/bin

