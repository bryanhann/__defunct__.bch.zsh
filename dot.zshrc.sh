echo ++ dot.zshrc.sh
XX="__root__(){echo $(dirname $(grealpath $0));}"
eval "${XX}"
source $(__root__)/zshrc.omzsh.sh
source $(__root__)/misc.colors.sh
source $(__root__)/misc.rxx.sh
source $(__root__)/misc.misc.sh
echo -- dot.zshrc.sh

