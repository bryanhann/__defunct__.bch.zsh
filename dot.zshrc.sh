##################################################################
#   dot.zshrc
##################################################################

X="__root__(){echo $(dirname $(grealpath $0));}";eval "$X"
source ~/.config/bch/constants.sh
source $(__root__)/constants.sh
source $(__root__)/zshrc.omzsh.sh
source $(__root__)/misc.colors.sh
source $(__root__)/misc.rxx.sh
source $(__root__)/misc.misc.sh

