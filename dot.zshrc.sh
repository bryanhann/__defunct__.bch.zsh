source  $(dirname $0)/__constants__

#### We assume that .zprofile has initiated VENV
    source ${BCH_SHELL_VENV}/bin/activate
    source virtualenvwrapper.sh


#### OMZSH
    source $(__root__)/main.zshrc.sh
    BCH_PROMPT=$PROMPT     #This is needed by [./hooks/virtualenv/postactivate].


#### MISC
    #source $(dirname $0)/misc.d/nesting.sh
    source $(dirname $0)/misc.d/colors.sg
    source $(dirname $0)/misc.d/rxx.sg
    source $(dirname $0)/misc.d/misc.sh
