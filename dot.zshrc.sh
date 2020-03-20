##################################################################
#   dot.zshrc
##################################################################
    X="__root__(){echo $(dirname $(grealpath $0));}";eval "$X"
    source ~/.local/bch/dunders/dunders.sh
    source $(__root__)/__constants__.sh

#---------------------------------------------------------
# VENV
#---------------------------------------------------------
    __link__ pip
    source $(__root__)/install.venv.sh
    source ${BCH_SHELL_VENV}/bin/activate
    source virtualenvwrapper.sh

#---------------------------------------------------------
# OMZSH
#---------------------------------------------------------
    source $(__root__)/install.omzsh.sh
    source $(__root__)/zshrc.omzsh.sh
    BCH_PROMPT=$PROMPT     #This is needed by [./hooks/virtualenv/postactivate].

#---------------------------------------------------------
# MISC
#---------------------------------------------------------
    source $(__root__)/misc.colors.sh
    source $(__root__)/misc.rxx.sh
    source $(__root__)/misc.misc.sh

