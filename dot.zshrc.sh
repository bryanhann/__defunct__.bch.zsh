source  $(dirname $0)/__constants__
source ${BCH_SHELL_VENV}/bin/activate
source virtualenvwrapper.sh
source $(__root__)/misc.sh

#### OMZSH
    source $(__root__)/main.zshrc.sh
    BCH_PROMPT=$PROMPT     #This is needed by [./hooks/virtualenv/postactivate].

