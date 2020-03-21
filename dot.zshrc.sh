##################################################################
#   dot.zshrc
##################################################################
    X="__root__(){echo $(dirname $(grealpath $0));}";eval "$X"
    source $(__root__)/constants.sh
#    source $(__root__)/install.omzsh.sh
    source $(__root__)/zshrc.omzsh.sh
    BCH_PROMPT=$PROMPT     #This is needed by [./hooks/virtualenv/postactivate].
    source $(__root__)/misc.colors.sh
    source $(__root__)/misc.rxx.sh
    source $(__root__)/misc.misc.sh

