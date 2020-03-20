source  $(dirname $0)/__constants__.sh

#### We assume that .zprofile has initiated VENV
    source ${BCH_SHELL_VENV}/bin/activate
    source virtualenvwrapper.sh


#### OMZSH
    source $(__root__)/zshrc.omzsh.sh
    BCH_PROMPT=$PROMPT     #This is needed by [./hooks/virtualenv/postactivate].


#### MISC
    #source $(dirname $0)/misc.nesting.sh
    source $(dirname $0)/misc.colors.sh
    source $(dirname $0)/misc.rxx.sh
    source $(dirname $0)/misc.misc.sh
